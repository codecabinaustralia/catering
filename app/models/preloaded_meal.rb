class PreloadedMeal < ApplicationRecord
	has_many :meals
	has_many :dietary_restrictions

	def self.csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |preloaded_meal|
				csv << preloaded_meal.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			PreloadedMeal.create! row.to_hash
		end
	end
end
