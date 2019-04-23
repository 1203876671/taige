	var flag = true;
	$(".munes").click(function() {
		$(".nav").slideToggle();
		if (flag) {
			$(this).addClass('x');
		} else {
			$(this).removeClass('x');
		}
		flag = !flag;
		$(".level").attr("href","javascript:;")
	});
	$(".level").click(function(){
				if ($(this).siblings('.level_down').hasClass('show')) {
					$(this).siblings('.level_down').stop().removeClass('show');
					$(this).siblings('.level_down').animate({
						'overflow':'none',
						'height':'0px',
					},200);
				} else{
					$(".nav>ul>li>div").stop().animate({
						'overflow':'none',
						'height':'0px'
					},200).removeClass('show');
					$(this).siblings('.level_down').addClass('show');
					$(this).siblings('.level_down').stop().animate({
						'height':$(this).siblings('.level_down').children().length*40+'px',
					},200);
				}
})