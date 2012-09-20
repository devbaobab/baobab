function click_card(address) {

	location.href = '#';

	$(".overlayOuter").fadeIn(300);
	document.body.style.overflow = 'hidden';

	$("#overlayInner").attr('src', address);

}

function close_popup() {
	$(".overlayOuter").fadeOut(300);
	document.body.style.overflow = 'auto';
}