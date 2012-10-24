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
//= require_tree .
//= require jquery.ui.all

function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}

function toggleUserMenu() {
	var display = $('.user-menu').css('display');
	
	if(display == 'none'){
		$('.user-menu').show();
	} else {
		$('.user-menu').hide();
	}
		
}

function setupPlay(){
	$('body').attr("class", "movie-start");
	$('header').first().hide();
	
	
}

function toggleCategoryList() {
	var display = $('.list-category').css('display');
	
	if(display == 'none'){
		$('.list-category').show();
	} else {
		$('.list-category').hide();
	}
		
}

$(function() {
    $( "#tabs" ).tabs();
});

function autoResize(){
    var height, width;

    height = document.body.offsetHeight + 100;
    width = document.body.offsetWidth ;

    $("body").height(height);
    $("body").width(width);
}

// require prototype
// require prototype_ujs
// require effects
// require dragdrop
// require controls

/* prototype control
function remove_fields(link) {
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}
*/