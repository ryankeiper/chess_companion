$(document).ready(function(){

	$('.gamebar').on("click", ".back-tourn", function(event){
		event.preventDefault();
		$('.gamebar').fadeToggle();
		$('.sidebar').fadeToggle();
		$('.gamebar').empty();
		$('.gamebar').append('<ol />');
	})
	
})