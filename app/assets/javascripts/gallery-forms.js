$(document).ready(function(){
	$('#new-photo-button').click(function(e){
		e.preventDefault();
		$('.notice').removeClass("notice").html("");
		$('#photos-forms-edit').html("");
		$('#edit-photos').hide();
		$('#delete_photos').hide();
		$('#new-photo').slideDown(function(e){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#edit-photos-button').click(function(e){
		e.preventDefault();
		$('.notice').removeClass("notice").html("");
		$('#photos-forms-edit').html("");
		$('#new-photo').hide();
		$('#delete_photos').hide();
		$('#edit-photos').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#delete-photos-button').click(function(e){
		e.preventDefault();
		$('#photos-forms-edit').html("");
		$('#new-photo').hide();
		$('#edit-photos').hide();
		$('#delete_photos').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('.edit-photo').click(function(){
		$('#edit-photos').hide(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#create-photo').click(function(){
		$('#new-photo').hide(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
});
