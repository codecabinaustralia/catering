// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.minicolors
//= require foundation
//= require turbolinks
//= require recurring_select
//= require jquery-mobile-rs
//= require Chart.min
//= require select2-full
//= require foundation-datepicker
//= require jquery_nested_form
//= require_tree .

$(document).on('turbolinks:load', function() {
	$(function(){ $(document).foundation(); 
		$('input[type=text].color_wheel').minicolors();

		$(".meal_preloaded_meal").select2({
		  theme: "classic",
		  width: 'resolve'
		});   

		$('.dp1').fdatepicker({
			initialDate: '02-12-1989',
			format: 'yyyy-mm-dd',
			disableDblClickSelection: true,
			leftArrow:'<<',
			rightArrow:'>>',
			closeButton: false
		});


	});
	
});