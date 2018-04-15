class DisplayOrder < Prawn::Document
	

	def initialize(filtered_date, patients, patient_meals)
		super( page_layout: :landscape, page_size: "A3")
		@filtered_date = filtered_date
		@patients = patients
		@patient_meals = patient_meals

		text "Orders for #{@filtered_date.to_date.strftime('%d/%m/%Y')}", size: 20, style: :bold
		line_items
	end

	def line_items
		move_down 20
		table line_item_rows, :cell_style => { :size => 9 }
	end

	def line_item_rows
		@meal_options = MealOption.pluck(:title).to_a
		[[
			 "Room","Name", "Diet Type", "Food Texture", "Fluid Consistency", "Extra Info"
			] + @meal_options] + 

		@patient_meals.map do |patient_meal|
			@meal_option = MealOption.find(patient_meal.meal_option_id)
			a = [
			patient_meal.patient.room_number,
			patient_meal.patient.full_name,
			patient_meal.patient.diet_type,
			patient_meal.patient.allergies,
			patient_meal.patient.fluid_consistency,
			patient_meal.patient.extra_information,
			]
			#Try to loop but doesn't work for some reason
			#(5).times do |i|
			#end


			  if @meal_option.title == @meal_options[0]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[1]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[2]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[3]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[4]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[5]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[6]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[7]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[8]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[9]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[10]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[11]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[12]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[13]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[14]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[15]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[16]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end

	  		  if @meal_option.title == @meal_options[17]
	  			a.push(patient_meal.meal.title)
	  		  else
	  		  	a.push("X")
	  		  end
	
		end 

		#@patient_meals.map(&:inspect).join(', ') do |patient_meal|
		
	end
end