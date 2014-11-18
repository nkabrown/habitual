// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  $(".shim").on('click', function() {
    $(this).hide();
    $(".sign-in-form").hide().css("top", "50%");
    $("body").css("overflow", "visible");
  });

  $(".sign-in-btn").on('click', function(event) {
    event.preventDefault();
    $(".shim").show();
    $(".sign-in-form").show().animate({ top: "90px" }, 200);
    $("body").css("overflow", "hidden");
    $("body").animate({ scrollTop: 0 }, 200);
  });

});
