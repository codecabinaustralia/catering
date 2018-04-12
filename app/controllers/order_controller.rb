class OrderController < ApplicationController
  def build_order
  	@filtered_date = params[:filtered_date]
  	@patient = Patient.find(params[:patient_id])
  	@meals = PatientMeal.where(patient_id: @patient.id).where("delivery_date = ?", "#{(Time.now + 1.day).strftime('%Y-%m-%d')}").all
  	@order = Order.new(patient_id: @patient.id, ward_id: @patient.ward_id, site_id: @patient.ward.site_id, delivery_date: @filtered_date.to_date )
  	@order.save

    @meals.each do |meal|
      meal.update_attributes(order_id: @order.id)
      meal.save
    end

    respond_to do |format|
        format.html {redirect_to display_orders_path(:filtered_date => @filtered_date)}
        format.js{ render :action => "patients_meal" }
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
