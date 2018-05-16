// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs


$(document).ready(function() {
  $('[data-js-tutorial-form]').on("ajax:success", function(event, data, status, xhr){
    var tutorial = $(xhr.responseText).hide();
    $('#tutorials').append(tutorial);
    tutorial.fadeIn(2000);
  });

  $('[data-js-tutorial-id]').on("ajax:success", function(event, data, status, xhr){
    var tutorial_id = xhr.responseJSON.id;
    $('[data-js-tutorial-id=' + tutorial_id + ']').hide();
  });

});

