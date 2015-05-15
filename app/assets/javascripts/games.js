$(document).ready(function(){

	// Clears the contents of the game column and
	// switches views to the tournament list
	$('.gamebar').on("click", ".back-tourn", function(event){
		event.preventDefault();
		$('.gamebar').fadeToggle();
		$('.sidebar').fadeToggle();
		$('.gamebar').empty();
		$('.gamebar').append('<ol />');
	})
	
})