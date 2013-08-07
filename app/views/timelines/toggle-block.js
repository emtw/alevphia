$(document).ready(function(){
   $("#blockCheck").click(function(){
      var text = $("#media_box > input").val();
      $("#media_box > input").val('<blockquote>'+text+'</blockquote>');
    }); 
});
