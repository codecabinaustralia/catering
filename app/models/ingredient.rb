class Ingredient < ApplicationRecord
	has_many :ingredient_preloaded_meals

	def title_with_measure
		title + " / " + unit_measure
	end
end
