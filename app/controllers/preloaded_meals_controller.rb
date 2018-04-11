class PreloadedMealsController < ApplicationController
  before_action :set_preloaded_meal, only: [:show, :edit, :update, :destroy]

  # GET /preloaded_meals
  # GET /preloaded_meals.json
  def index
    @preloaded_meals = PreloadedMeal.all
  end

  # GET /preloaded_meals/1
  # GET /preloaded_meals/1.json
  def show
  end

  # GET /preloaded_meals/new
  def new
    @preloaded_meal = PreloadedMeal.new
  end

  # GET /preloaded_meals/1/edit
  def edit
  end

  # POST /preloaded_meals
  # POST /preloaded_meals.json
  def create
    @preloaded_meal = PreloadedMeal.new(preloaded_meal_params)

    respond_to do |format|
      if @preloaded_meal.save
        format.html { redirect_to @preloaded_meal, notice: 'Preloaded meal was successfully created.' }
        format.json { render :show, status: :created, location: @preloaded_meal }
      else
        format.html { render :new }
        format.json { render json: @preloaded_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preloaded_meals/1
  # PATCH/PUT /preloaded_meals/1.json
  def update
    respond_to do |format|
      if @preloaded_meal.update(preloaded_meal_params)
        format.html { redirect_to @preloaded_meal, notice: 'Preloaded meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @preloaded_meal }
      else
        format.html { render :edit }
        format.json { render json: @preloaded_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preloaded_meals/1
  # DELETE /preloaded_meals/1.json
  def destroy
    @preloaded_meal.destroy
    respond_to do |format|
      format.html { redirect_to preloaded_meals_url, notice: 'Preloaded meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preloaded_meal
      @preloaded_meal = PreloadedMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preloaded_meal_params
      params.require(:preloaded_meal).permit(:title, :ingredients, :nutritional_info, :notes)
    end
end
