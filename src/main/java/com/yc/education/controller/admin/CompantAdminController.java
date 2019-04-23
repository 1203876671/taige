package com.yc.education.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.education.model.Company;
import com.yc.education.model.Invite;
import com.yc.education.model.News;
import com.yc.education.service.CompanyService;
import com.yc.education.service.InviteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @ClassName CompantAdminController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 17:43
 * @Version 1.0
 */
@Controller
@RequestMapping("admin")
public class CompantAdminController {

    @Autowired
    private CompanyService companyService;

    @Autowired
    private InviteService inviteService;

    /**
     * 显示全部公司
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("companymanage.html")
    public ModelAndView companyManage(@RequestParam(required = false, defaultValue = "1") int page,
                                      @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo", new PageInfo<>(companyService.company(page, rows)));
        return modelAndView;
    }

    /**
     * 公司修改
     *
     * @param id
     * @return
     */
    @RequestMapping("upcompany.html")
    public ModelAndView upcompany(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("company", companyService.selectByKey(id));
        return modelAndView;
    }

    /**
     * 招聘信息查看
     */
    @RequestMapping("invitemanage.html")
    public ModelAndView invitemanage(@RequestParam(required = false, defaultValue = "1") int page,
                                     @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo", new PageInfo<>(inviteService.getInvite(page, rows)));
        return modelAndView;
    }

    /**
     * 招聘信息查看
     */
    @RequestMapping("upinvite.html")
    public ModelAndView upinvite(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("invite", inviteService.selectByKey(id));
        return modelAndView;
    }


    /**
     * 添加或修改公司
     *
     * @param company
     * @param editorValue
     * @param request
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertcompany.html")
    public ModelAndView insertArticle(Company company, String editorValue, HttpServletRequest request) throws java.text.ParseException, IOException {
        company.setContext(editorValue);
        if (company.getId() != null && !"".equals(company.getId())) {
            companyService.updateNotNull(company);
        } else {
            companyService.save(company);
        }
        ModelAndView modelAndView = companyManage(1, 10);
        modelAndView.setViewName("admin/companymanage");
        return modelAndView;
    }

    /**
     * 添加或修改招聘信息
     *
     * @param editorValue
     * @param request
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertinvite.html")
    public ModelAndView insertinvite(Invite invite, String editorValue, HttpServletRequest request) throws java.text.ParseException, IOException {
        invite.setContext(editorValue);
        if (invite.getId() != null && !"".equals(invite.getId())) {
            inviteService.updateNotNull(invite);
        } else {
            inviteService.save(invite);
        }
        ModelAndView modelAndView = companyManage(1, 10);
        modelAndView.setViewName("admin/invitemanage");
        return modelAndView;
    }

}
