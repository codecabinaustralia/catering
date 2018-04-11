json.extract! meal, :id, :title, :meal_option_id, :notes, :created_at, :updated_at
json.url meal_url(meal, format: :json)
