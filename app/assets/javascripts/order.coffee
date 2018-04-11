# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

	wards = $('#_display_orders_ward_id').html()
	$('#_display_orders_ward_id').hide()

	$('#_display_orders_site_id').change ->
		site = $('#_display_orders_site_id :selected').text()
		options = $(wards).filter("optgroup[label='#{site}']").html()
		if options
			$('#_display_orders_ward_id').html(options)
			$('#_display_orders_ward_id').show()
		else
			$('#_display_orders_ward_id').empty()
			$('#_display_orders_ward_id').hide()
		end
