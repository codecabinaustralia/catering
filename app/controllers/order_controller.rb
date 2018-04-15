class OrderController < ApplicationController
  def build_order
  	@filtered_date = params[:filtered_date].to_date.strftime('%Y-%m-%d')
  	@patient = Patient.find(params[:patient_id])
  	@meals = PatientMeal.where(patient_id: @patient.id).where("delivery_date = ?", "#{(Time.now + 1.day).strftime('%Y-%m-%d')}").all
  	@order = Order.new(patient_id: @patient.id, ward_id: @patient.ward_id, site_id: @patient.ward.site_id, delivery_date: @filtered_date.to_date )
  	@order.save

    @find_meals = PatientMeal.where(patient_id: @patient.id).where("delivery_date = ?", "#{@filtered_date}").all


    @find_meals.each do |meal|
      meal.update_attributes(order_id: @order.id)
      meal.save
    end

    respond_to do |format|
        format.html {redirect_to patients_path(:filtered_date => @filtered_date)}
        format.js{ render :action => "meal_category_id, meal_id, delivery_date, meal_option_id, diet_texture, fluid_consistency" }
    end

  	
  end

  def display_orders
    if(params.has_key?(:filtered_date))
    @filtered_date = params[:filtered_date]
    else
    @filtered_date = (Time.now + 1.day).strftime("%Y-%m-%d").to_s.strip
    end 
    #for filtering
    @wards = Ward.where(site_id: params[:site_id]).all

    @patients = Patient.all
    @meal_options = MealOption.all

    #SQLLITE
    #@patient_meals = PatientMeal.where(delivery_date: @filtered_date).all.select(:patient_id, patient_meals.id).group(:patient_id, patient_meals.id)
    
    #POSTGRES
    @patient_meals = PatientMeal.select("DISTINCT ON (patient_meals.patient_id) * ")
                       .where(delivery_date: @filtered_date)
                       .group("")
    #PDF
    respond_to do |format|
      format.html
      format.pdf do
        pdf = DisplayOrder.new(@filtered_date, @patients, @patient_meals)
        send_data pdf.render,
          filename: "Display_Orders-#{@filtered_date}.pdf",
          type: "application/pdf",
          disposition: "inline"
      end
    end

  end

  def display_pdf_orders
    @meal_category = MealCategory.find(params[:meal_category])
    if(params.has_key?(:filtered_date))
    @filtered_date = params[:filtered_date]
    else
    @filtered_date = (Time.now + 1.day).strftime("%Y-%m-%d").to_s.strip
    end 
    @patients = Patient.all
    @patient_meals = PatientMeal.where.not(order_id: nil).where(meal_category_id: @meal_category.id).where(delivery_date: @filtered_date).group(:patient_id).all
    @unconfirmed_patient_meals = PatientMeal.where(order_id: nil).where(meal_category_id: @meal_category.id).where(delivery_date: @filtered_date).group(:patient_id).all

    #PDF
    respond_to do |format|
      format.html
      format.pdf do
        pdf = DisplayPdfOrder.new(@filtered_date, @patients, @patient_meals, @meal_category, @unconfirmed_patient_meals)
        send_data pdf.render,
          filename: "Display_#{@meal_category.title}_Orders-#{@filtered_date}.pdf",
          type: "application/pdf",
          disposition: "inline"
      end
    end
  end

  def display_orders_meal
    if(params.has_key?(:filtered_date))
    @filtered_date = params[:filtered_date]
    else
    @filtered_date = Time.now.strftime("%Y-%m-%d").to_s.strip
    end

    @meal = Meal.find(params[:meal])
    @patients = PatientMeal.where(meal_id: @meal.id).where(delivery_date: @filtered_date).where.not(order_id: nil).all
  end

  def menu_overview
    #store page in session var
    session[:return_to] ||= request.referer

    #Define date
    if(params.has_key?(:current_time))
    @current_time = params[:current_time].to_date
    else
    @current_time = Time.now
    end

    #find meal categories
    @meal_categories = MealCategory.all

    #form attribute
    @meal = Meal.new

  end
end
