var index=0;
$(".goods_title dd").click(function(){
	index=$(this).index()-1;
	$(".goods_tab").css("display","none").eq(index).css("display","block")
	$(".goods_title dd").removeClass("active").eq(index).addClass("active");
	$(".goods_title dd a").removeClass("active").eq(index).addClass("active");
})