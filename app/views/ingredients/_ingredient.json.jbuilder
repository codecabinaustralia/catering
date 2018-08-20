json.extract! ingredient, :id, :title, :price, :unit_measure, :unit_quantity, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
