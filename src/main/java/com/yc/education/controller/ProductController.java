package com.yc.education.controller;

import com.yc.education.service.ProdetailsService;
import com.yc.education.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName ProductController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 9:56
 * @Version 1.0
 */
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProdetailsService prodetailsService;

    /**
     * 查看所有产品
     *
     * @return
     */
    @RequestMapping("goods")
    public ModelAndView goods() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("listProduct", productService.listProduct());
        return modelAndView;
    }


    /**
     * 根据id查看所有产品
     *
     * @return
     */
    @RequestMapping("download")
    public ModelAndView download(@RequestParam(required = false, defaultValue = "1") int proid) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("listProDetails", prodetailsService.listProDetails(proid));
        return modelAndView;
    }


}
