$(document).ready(function(){
	$('#edit-events-button').click(function(){
		$('#new-event').hide();
		$('#delete-events').hide();
		$('#edit-events').slideDown();
		return false;
	});
});
