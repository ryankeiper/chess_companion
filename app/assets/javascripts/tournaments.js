$(document).ready(function(){

	$('#tourn-link').on("click", function(event){
		event.preventDefault;
		$('.new-tourn').fadeToggle();
	})

	$('.tournament').on("hover", function(){
		$(this).find('.button_to').fadeToggle();
	})












})