var winWidth,winHeight;


/*  浏览器宽高  */
function winhw(){
	
	winWidth = $(window).width();
	winHeight = $(window).height();
	
	}

function minhei(dds){
	var vct = winHeight-550;
	$(dds).css("min-height",vct);
	}

function restd(){
	$(".cd-nav-trigger").click(function(){
		if(!$(this).hasClass("close-nav")){
			$(this).addClass("close-nav");
			$(".headnva").addClass("tagedow");
			}
		else{
			$(this).removeClass("close-nav");
			$(".headnva").removeClass("tagedow");
			}
		})
	}





/*  文档加载完成  */
$(document).ready(function(){
	winhw();
})


/*  整体页面加载完成  */
$(window).load(function() {
	winhw()
	restd()
});


/*  页面高度改变后  */
$(window).resize(function() {
	winhw()
	if(winWidth>639){		
			$(".cd-nav-trigger").removeClass("close-nav");
			$(".headnva").removeClass("tagedow");
		}
	
});

$(window).scroll(function () {
		offtopt = $(window).scrollTop();
		if(offtopt>120){
			$(".header").addClass("headerfox");
			}
		else{
			$(".header").removeClass("headerfox");
			}
});