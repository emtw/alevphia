// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
$(document).ready(function() {
  $('#add-message').click(function(){
	  $('#add-message').hide();
	  $('#new-message').slideDown();
  });
	  
  $('#funeral_funeral_pref').focus(function(){
  	$('#ttfuneral_pref').show();
  });
  $('#funeral_funeral_pref').blur(function(){
  	$('#ttfuneral_pref').hide();
  });
  $('#funeral_other_pref').focus(function(){
  	$('#ttother_loc').show();
  });
  $('#funeral_other_pref').blur(function(){
  	$('#ttother_loc').hide();
  });
  $('#funeral_ashes_location').focus(function(){
  	$('#ttashes_loc').show();
  });
  $('#funeral_ashes_location').blur(function(){
  	$('#ttashes_loc').hide();
  });
  $('#funeral_burial_location').focus(function(){
  	$('#ttburial_loc').show();
  });
  $('#funeral_burial_location').blur(function(){
  	$('#ttburial_loc').hide();
  });
  $('#funeral_casket_pref').focus(function(){
  	$('#ttcasket').show();
  });
  $('#funeral_casket_pref').blur(function(){
  	$('#ttcasket').hide();
  });
  $('#funeral_service_location').focus(function(){
  	$('#ttservice').show();
  });
  $('#funeral_service_location').blur(function(){
  	$('#ttservice').hide();
  });
  $('#funeral_songs_pref').focus(function(){
  	$('#tthymn').show();
  });
  $('#funeral_songs_pref').blur(function(){
  	$('#tthymn').hide();
  });
  $('#funeral_readings').focus(function(){
  	$('#ttreadings').show();
  });
  $('#funeral_readings').blur(function(){
  	$('#ttreadings').hide();
  });
  $('#funeral_speakers').focus(function(){
  	$('#ttspeakers').show();
  });
  $('#funeral_speakers').blur(function(){
  	$('#ttspeakers').hide();
  });
  $('#funeral_final_words').focus(function(){
  	$('#ttfinal_words').show();
  });
  $('#funeral_final_words').blur(function(){
  	$('#ttfinal_words').hide();
  });
  $('#funeral_dress_code').focus(function(){
  	$('#ttdress_code').show();
  });
  $('#funeral_dress_code').blur(function(){
  	$('#ttdress_code').hide();
  });
  $('#funeral_flowers').focus(function(){
  	$('#ttflowers').show();
  });
  $('#funeral_flowers').blur(function(){
  	$('#ttflowers').hide();
  });
  $('#funeral_donations_to').focus(function(){
  	$('#ttdonations').show();
  });
  $('#funeral_donations_to').blur(function(){
  	$('#ttdonations').hide();
  });
  $('#funeral_hymns_pref').focus(function(){
  	$('#tthymn').show();
  });
  $('#funeral_hymns_pref').blur(function(){
  	$('#tthymn').hide();
  });
  $('#funeral_wake').focus(function(){
  	$('#ttwake').show();
  });
  $('#funeral_wake').blur(function(){
  	$('#ttwake').hide();
  });
  $('#funeral_epitaph').focus(function(){
  	$('#ttepitaph').show();
  });
  $('#funeral_epitaph').blur(function(){
  	$('#ttepitaph').hide();
  });
  $('#funeral_additional_reqs').focus(function(){
  	$('#ttadd_req').show();
  });
  $('#funeral_additional_reqs').blur(function(){
  	$('#ttadd_req').hide();
  });
});
  

