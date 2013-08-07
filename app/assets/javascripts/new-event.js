$(document).ready(function(){
	$('#new-event-button').click(function(e){
		e.preventDefault();
		$('#edit-events').hide();
		$('#delete-events').hide();
		$('#new-event').slideDown();
	});	
});
