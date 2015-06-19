$(document).ready(function(){

	// Clears the contents of the game column and
	// switches views to the tournament list
	$('.gamebar').on("click", ".back-tourn", function(event){
		event.preventDefault();
		$('.gamebar').toggle();
		$('.sidebar').fadeToggle();
		$('.gamebar').empty();
		$('.gamebar').append('<ol />');
		$('.gamebar').append('<div />');
	})

	$('.gamebar').on("click", '#game-link', function(event){
		event.preventDefault();
		$('.new-game').fadeToggle();
		$('body, html').animate({
		    'scrollTop': $('.gamebar').offset().top
		}, 500);
	})

	// Button to delete a game from the list and database
	$('.gamebar').on("click",".del-game", function(event){
		event.preventDefault();
		$(this).parent().parent().fadeToggle();
		$.ajax({
			url: $(this).parent().attr('action'),
			type: 'POST',
			data: {_method: 'delete'},
			success: function(){
				$(this).parent().parent().remove();
			}.bind(this)
		})
	})
	
})