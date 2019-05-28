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
    if ($(window).scrollTop() > 56) {
      $('#nav_bar').addClass('navbar-fixed');
    }
    if ($(window).scrollTop() < 57) {
      $('#nav_bar').removeClass('navbar-fixed');
    }
    if ($(window).scrollTop() > 56) {
      $('#nav_bar_web').addClass('navbar-fixed-web');
    }
    if ($(window).scrollTop() < 57) {
      $('#nav_bar_web').removeClass('navbar-fixed-web');
    }
  });
});

$(window).resize(function() {
  if ($(window).width() < 755) {
    $("#web").hide();
    $("#mob").show();
  }
  else{
    $("#web").show();
    $("#mob").hide();
  }
});

$(window).load(function() {
  if ($(window).width() < 755) {
    $("#web").hide();
    $("#mob").show();
  }
  else{
    $("#web").show();
    $("#mob").hide();
  }
});








