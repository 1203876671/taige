/*******************************TAB切换***********************************/


function tabSliderclock(obj,objs,objsn){
	hookThumb();	
	function slide(i){
		$(obj).eq(i).addClass(objs).siblings().removeClass(objs);
		$(objsn).eq(i).css('display','block').siblings(objsn).css('display','none');
		
	}	
	function hookThumb(){    
		$(obj).click(
		function(){
				i = $(this).prevAll().length;
				slide(i); 
		}); 
		$(".sort_tab a").click(function(){
			$(".sort_list li").removeClass("licur");
			$(".count_gs").hide();
			$(".sort_list").removeClass("sort_listcur")
		})

	}
}

$(function(){
	$(".return_btn").click(function(){
		
		$(".sort_tab a").each(function(){
			var _index=$(this).index(".sort_tab a");
				if($(".sort_tab a").eq(_index).hasClass("sort_tabcur")){
				$(".sort_tab_con").eq(_index).show();
			}
		})
		
		$(".count_gs").hide();
		
	})	
})

//tab开始
$(document).ready(function(){
	tabSliderclock(".problem_mktab a","cur",".problem_mkcon");	
})


