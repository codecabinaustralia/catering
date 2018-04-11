class MealOptionsController < ApplicationController
  before_action :set_meal_option, only: [:show, :edit, :update, :destroy]

  # GET /meal_options
  # GET /meal_options.json
  def index
    @meal_options = MealOption.all
  end

  # GET /meal_options/1
  # GET /meal_options/1.json
  def show
  end

  # GET /meal_options/new
  def new
    @meal_option = MealOption.new
  end

  # GET /meal_options/1/edit
  def edit
  end

  # POST /meal_options
  # POST /meal_options.json
  def create
    @meal_option = MealOption.new(meal_option_params)

    respond_to do |format|
      if @meal_option.save
        format.html { redirect_to @meal_option, notice: 'Meal option was successfully created.' }
        format.json { render :show, status: :created, location: @meal_option }
      else
        format.html { render :new }
        format.json { render json: @meal_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_options/1
  # PATCH/PUT /meal_options/1.json
  def update
    respond_to do |format|
      if @meal_option.update(meal_option_params)
        format.html { redirect_to @meal_option, notice: 'Meal option was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_option }
      else
        format.html { render :edit }
        format.json { render json: @meal_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_options/1
  # DELETE /meal_options/1.json
  def destroy
    @meal_option.destroy
    respond_to do |format|
      format.html { redirect_to meal_options_url, notice: 'Meal option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_option
      @meal_option = MealOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_option_params
      params.require(:meal_option).permit(:title, :meal_category_id, :color)
    end
end
