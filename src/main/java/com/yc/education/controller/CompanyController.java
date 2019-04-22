package com.yc.education.controller;

import com.yc.education.model.Company;
import com.yc.education.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName CompanyController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 18:01
 * @Version 1.0
 */
@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyService;


    @RequestMapping("company")
    public ModelAndView getCompany(@RequestParam(required = false, defaultValue = "1") int type) {
        ModelAndView modelAndView = new ModelAndView();
        Company company = companyService.getCompany(type);
        modelAndView.addObject("company",company);
        return modelAndView;
    }


}
