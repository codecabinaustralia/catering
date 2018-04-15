class PreloadedMeal < ApplicationRecord
	has_many :meals
	has_many :dietary_restrictions
	accepts_nested_attributes_for :dietary_restrictions
end
