package com.yc.education.controller;

import com.yc.education.service.DetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName ApplyController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 9:17
 * @Version 1.0
 */
@Controller
public class ApplyController {


    @Autowired
    private DetailsService detailsService;


    /**
     * 根据applyid取对象
     *
     * @return
     */
    @RequestMapping("application-list")
    public ModelAndView listDetails(@RequestParam(required = false, defaultValue = "1") int applyid) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("details", detailsService.listDetails(applyid));
        return modelAndView;
    }


}
