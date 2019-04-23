$(function(){
	var scale = 1 / window.devicePixelRatio
	$("meta").attr('content',"width=device-width,initial-scale="+scale+",minimum-scale="+scale+",maximum-scale="+scale+",user-scalable=no")
	document.documentElement.style.fontSize = 1920 / 19.2 + 'px';
});