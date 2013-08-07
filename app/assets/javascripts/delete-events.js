$(document).ready(function(){
	$('#delete-events-button').click(function(e){
		e.preventDefault();
		$('#new-event').hide();
		$('#edit-events').hide();
		$('#delete-events').slideDown();
		return false;
	});	
});
