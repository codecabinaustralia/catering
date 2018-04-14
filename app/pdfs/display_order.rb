class DisplayOrder < Prawn::Document

	def initialize(filtered_date, patients, orders)
		super(top_margin: 70, page_layout: :landscape, page_size: "A3")
		@filtered_date = filtered_date
		@patients = patients
		@orders = orders

		text "Orders for #{@filtered_date.to_date.strftime('%d/%m/%Y')}", size: 20, style: :bold
		line_items
	end

	def line_items
		move_down 20
		table line_item_rows
	end

	def line_item_rows
		[["RM","NAME", "DIET TYPE", "FOOD TEXTURE", "FLUID CONSISTENCY", "EXTRA INFORMATION 
(LIKES/DISLIKES)"]] + 

		@orders.map do |order|
		@meal_items = PatientMeal.where(order_id: order.id).all
			[
			order.patient.room_number,
			order.patient.full_name,
			order.patient.allergies,	
			@meal_items.each(&:inspect).join(', ') do |m|
				m.title
			end
			]
		end
	end
end