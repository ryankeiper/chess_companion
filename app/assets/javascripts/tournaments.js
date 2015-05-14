$(document).ready(function(){

	// Link to toggle the New Tournament form into/out of view
	$('#tourn-link').on("click", function(event){
		event.preventDefault();
		$('.new-tourn').fadeToggle();
	})

	// Button to delete a tournament from the list and database
	$('.tournaments').on("click",".del-tourn", function(event){
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

	$('.tournament').on("click", function(event){
		event.preventDefault();
		$('.gamebar').fadeToggle();
		$('.sidebar').fadeToggle();
	})

	// On form submission, updates database with new tournament, and
	// adds the tournament to the list
	// $('.new-tourn').on("submit", function(event){
	// 	event.preventDefault();
	// 	$('.new-tourn').fadeToggle();
		
	// 	var formData = $(this).serializeArray();
	// 	$.ajax({
	// 		url: $(this).attr('action'),
	// 		type: 'POST',
	// 		data: formData,
	// 		dataType: 'JSON'
	// 	}).done(function(data){
	// 		$('.tournament-field').val("");
	// 		$('.sidebar ol').append('<li>Event: <a class="tournament" href="#">' + data["event"] + '</a></li>');
	// 	});
	// })












})