$(document).ready(function(){
	$('#new-event-button').click(function(e){
		e.preventDefault();
		$('.notice').removeClass("notice").html("")
		$('#events-forms-edit').html("");
		$('#edit-events').hide();
		$('#delete_events').hide();
		$('#new-event').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#edit-events-button').click(function(e){
		e.preventDefault();
		$('.notice').removeClass("notice").html("")
		$('#events-forms-edit').html("");
		$('#new-event').hide();
		$('#delete_events').hide();
		$('#edit-events').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#delete-events-button').click(function(e){
		e.preventDefault();
		$('#events-forms-edit').html("");
		$('#new-event').hide();
		$('#edit-events').hide();
		$('#delete_events').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('.edit-event').click(function(){
		$('#edit-events').hide(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
});
