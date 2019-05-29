//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

window.setTimeout(function() {
  $(".alert").addClass("in");
}, 600);

$(document).ready(function() { 
  $(window).scroll(function () { 
    console.log($(window).scrollTop())
    if ($(window).scrollTop() > 86) {
      $('#nav_bar').addClass('navbar-fixed');
    }
    if ($(window).scrollTop() < 87) {
      $('#nav_bar').removeClass('navbar-fixed');
    }
    if ($(window).scrollTop() > 86) {
      $('#nav_bar_web').addClass('navbar-fixed-web');
    }
    if ($(window).scrollTop() < 87) {
      $('#nav_bar_web').removeClass('navbar-fixed-web');
    }
  });
});









