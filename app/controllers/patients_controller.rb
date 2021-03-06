class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def import_patients
    Patient.import(params[:file])
    redirect_to patients_path
  end

  def index
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

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient_meal = PatientMeal.new
    @meal_options = MealOption.all
  end

  def patients_meal

    @meals = Meal.all
    @patient = Patient.find(params[:patient_id])

    @patient_meal_item = PatientMeal.new(patient_meal_params)
    @patient_meal_item.patient_id = @patient.id
    @patient_meal_item.diet_texture = @patient.diet_texture
    @patient_meal_item.fluid_consistency = @patient.fluid_consistency
    @patient_meal_item.save!



    if(params.has_key?(:filtered_date))
    @filtered_date = params[:filtered_date]
    else
    @filtered_date = (Time.now + 1.day).strftime("%Y-%m-%d").to_s.strip
    end

    @patient_meal_items = PatientMeal.where(patient_id: @patient).where(delivery_date: @filtered_date).all
    

    respond_to do |format|
        format.js{ render :action => "patients_meal" }
    end

  end

  def remove_patient_meal
    @patient_meal_item = PatientMeal.find(params[:patient_meal])
    @patient_meal_item.destroy

    respond_to do |format|
        format.js{ render :action => "remove_patient_meal" }
    end
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:avatar, :first_name, :last_name, :room_number, :allergies, :diet_type, :diet_texture, :fluid_consistency, :fluid_restriction, :likes, :dislikes, :extra_information, :ward_id)
    end

    def patient_meal_params
      params.require(:patient_meal).permit(:meal_category_id, :meal_id, :delivery_date, :meal_option_id, :diet_texture, :fluid_consistency, :patient_id)
    end
end
