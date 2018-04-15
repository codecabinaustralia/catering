class DisplayPdfOrder < Prawn::Document
	require 'prawn'
	require 'prawn/table'
	require "open-uri"

	def initialize(filtered_date, patients, patient_meals, meal_category, unconfirmed_patient_meals)
		super( page_layout: :landscape, page_size: "A3")
		@filtered_date = filtered_date
		@patients = patients
		@patient_meals = patient_meals
		@meal_category = meal_category
		@unconfirmed_patient_meals = unconfirmed_patient_meals


		logo = open("https://s3-us-west-2.amazonaws.com/salvation-army/images/logo-the_salvation_army19082016014456.jpg")
		

		image logo, :at => [1060,cursor], :width => 50
		move_down 40
		text "#{@meal_category.title} Orders for #{@filtered_date.to_date.strftime('%d/%m/%Y')}", size: 20, style: :bold
		line_items
	end

	def line_items
		move_down 10
		table line_item_rows do
			row(0).font_style = :bold
			row(0).background_color = '002a42'
			row(0).text_color = 'ffffff'

			self.row_colors = ['e5e5e5', 'ffffff']
			self.header = true
			self.cell_style = { :size => 12, :padding => [10,10,10,10]}
			self.width = 1110
			self.column(2).size = 10
			row(0).size = 12
		end

		move_down 50
		text "Unconfirmed Orders", size: 16, style: :bold
		table unconfirmed_line_item_rows do
			row(0).font_style = :bold
			row(0).background_color = '32465a'
			row(0).text_color = 'ffffff'
			self.row_colors = ['e5e5e5', 'ffffff']
			self.header = true
			self.cell_style = { :size => 11, :padding => [10,10,10,10]}
			self.width = 1110
			self.column(2).size = 9
			row(0).size = 10
		end

	end

	def line_item_rows
		@meal_options = MealOption.where(meal_category_id: @meal_category.id).all.pluck(:title).to_a
		[[
			 "Room","Name", "Allergies", "Diet Type", "Food Texture", "Fluid Consistency"
			] + @meal_options] + 

		@patient_meals.map do |patient_meal|
			@meal_option = MealOption.find(patient_meal.meal_option_id)
			a = [
			patient_meal.patient.room_number,
			patient_meal.patient.full_name,
			patient_meal.patient.allergies,
			patient_meal.patient.diet_type,
			patient_meal.patient.diet_texture,
			patient_meal.patient.fluid_consistency,
			]
			
			@new_array = Array.new

			cross = open("https://s3-us-west-2.amazonaws.com/salvation-army/images/cross-small.png")

			@meal_options.each do |meal|

			  if @meal_option.title == meal
	  			my_array = ["#{patient_meal.meal.title}"]
	  			@new_array.push(my_array)
	  		  else
	  		  	my_array = [{:image => cross}]
	  			@new_array.push(my_array)
	  			#.map{|item| %Q{"#{item}"}}.join(', ')

	  		  end

	  		  print @new_array
			end

			a.push(@new_array).flatten!
		end 		
	end

	def unconfirmed_line_item_rows
		
			@meal_options = MealOption.where(meal_category_id: @meal_category.id).pluck(:title).to_a
			[[
			 "Room","Name","Allergies", "Diet Type", "Food Texture", "Fluid Consistency"
			] + @meal_options] + 

			@unconfirmed_patient_meals.map do |patient_meal|
				@meal_option = MealOption.find(patient_meal.meal_option_id)
				a = [
				patient_meal.patient.room_number,
				patient_meal.patient.full_name,
				patient_meal.patient.allergies,
				patient_meal.patient.diet_type,
				patient_meal.patient.diet_texture,
				patient_meal.patient.fluid_consistency,
				]
				
				@new_array = Array.new

				cross = open("https://s3-us-west-2.amazonaws.com/salvation-army/images/cross-small.png")

				@meal_options.each do |meal|
					
				  if @meal_option.title == meal
		  			my_array = ["#{patient_meal.meal.title}"]
		  			@new_array.push(my_array)
		  		  else
		  		  	my_array = [{:image => cross}]
		  			@new_array.push(my_array)
		  			#.map{|item| %Q{"#{item}"}}.join(', ')

		  		  end

		  		  print @new_array
				end

				a.push(@new_array).flatten!
			end

	end
end

