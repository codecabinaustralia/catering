class Meal < ApplicationRecord
  belongs_to :meal_option
  belongs_to :preloaded_meal
  has_many :patient_meals


  def rule
    IceCube::Rule.daily(1)
    # Live Data - IceCube::Rule.weekly(5)
  end

  def schedule(start) 
    schedule = IceCube::Schedule.new(start)
    schedule.add_recurrence_rule(rule)
    schedule.add_exception_time(the_date)
    schedule
  end

  def calendar_meals
        start_date = the_date
        end_date = the_date + 5.weeks 
        schedule(start_date).occurrences(end_date).map do |date|

            @preloaded_meal = PreloadedMeal.find(preloaded_meal_id)
            @meal = Meal.new(

              title: @preloaded_meal.title,
              meal_option_id: meal_option_id,
              notes: notes,
              available_date: date,
              preloaded_meal_id: preloaded_meal_id, 
              relationship_code: relationship_code
              )
            @meal.save!
        end
  end


end
