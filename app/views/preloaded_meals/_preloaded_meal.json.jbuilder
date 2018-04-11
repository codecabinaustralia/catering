json.extract! preloaded_meal, :id, :title, :ingredients, :nutritional_info, :notes, :created_at, :updated_at
json.url preloaded_meal_url(preloaded_meal, format: :json)
