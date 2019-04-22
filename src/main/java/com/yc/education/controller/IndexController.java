package com.yc.education.controller;

import com.yc.education.service.ApplyService;
import com.yc.education.service.NewsService;
import com.yc.education.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName IndexController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 15:09
 * @Version 1.0
 */
@Controller
public class IndexController {

    /**
     * 产品
     */
    @Autowired
    private ProductService productService;

    /**
     * 应用
     */
    @Autowired
    private ApplyService applyService;

    /**
     * 新闻
     */
    @Autowired
    private NewsService newsService;

    /**
     * 首页面绑值
     *
     * @return
     */
    @RequestMapping("index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("listProduct", productService.listProduct());
        modelAndView.addObject("listNews", newsService.listnewsOrderSortAndDate(1, 1, 10));
        modelAndView.addObject("listNews2", newsService.listnewsOrderSortAndDate(2, 1, 10));
        modelAndView.addObject("listApply", applyService.listAppply());
        return modelAndView;
    }

}
