package com.yc.education.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.education.model.Company;
import com.yc.education.model.Invite;
import com.yc.education.model.News;
import com.yc.education.service.CompanyService;
import com.yc.education.service.InviteService;
import com.yc.education.util.AjaxMessage;
import com.yc.education.util.ViewUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    public ModelAndView upcompany(@RequestParam(required = false, defaultValue = "0") int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("company", companyService.selectByKey(id));
        return modelAndView;
    }

    /**
     * 公司修改
     *
     * @param type
     * @return
     */
    @RequestMapping("upcompanytype.html")
    public ModelAndView upcompanytype(@RequestParam(required = false, defaultValue = "1") int type, int id, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        if (type == 1) {
            modelAndView.addObject("title", "公司内容");
        }
        if (type == 2) {
            modelAndView.addObject("title", "公司愿景");
        }
        if (type == 3) {
            modelAndView.addObject("title", "价值传递");
        }
        if (type == 4) {
            modelAndView.addObject("title", "安全环保");
        }
        modelAndView.addObject("company", companyService.selectByKey(id));
        session.setAttribute("type", type);
        return modelAndView;
    }

    /**
     * 添加或修改公司
     *
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertcompanytype.html")
    public ModelAndView insertcompanytype(String editorValue, int id, HttpSession session, int type) throws java.text.ParseException, IOException {
        Company company = new Company();
        company.setId(id);
        if (type == 1) {
            company.setContext(editorValue);
        }
        if (type == 2) {
            company.setVision(editorValue);
        }
        if (type == 3) {
            company.setDelivery(editorValue);
        }
        if (type == 4) {
            company.setSecurity(editorValue);
        }
        if (company.getId() != null && !"".equals(company.getId())) {
            companyService.updateNotNull(company);
        } else {
            companyService.save(company);
        }
        ModelAndView modelAndView = ViewUtil.returnview(10, "upcompanydetails.html", "公司详情");
        session.setAttribute("type", type);
        session.setAttribute("company", company);
        return modelAndView;
    }

    /**
     * 公司修改
     *
     * @param id
     * @return
     */
    @RequestMapping("upcompanydetails.html")
    public ModelAndView upcompanydetails(@RequestParam(required = false, defaultValue = "0") int id, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        session.setAttribute("id", id);
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
    public ModelAndView upinvite(@RequestParam(required = false, defaultValue = "0") int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("invite", inviteService.selectByKey(id));
        return modelAndView;
    }


    /**
     * 添加或修改公司
     *
     * @param company
     * @param request
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertcompany.html")
    public ModelAndView insertArticle(Company company, HttpServletRequest request) throws java.text.ParseException, IOException {
        if (company.getId() != null && !"".equals(company.getId())) {
            companyService.updateNotNull(company);
        } else {
            companyService.save(company);
        }
        ModelAndView modelAndView = ViewUtil.returnview(10, "companymanage.html", "公司管理");
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
        ModelAndView returnview = ViewUtil.returnview(10, "invitemanage", "招聘信息管理");
        return returnview;
    }

    /**
     * 删除招聘信息
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("deleteinvite.html")
    public AjaxMessage<Object> deleteinvite(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            rows += inviteService.delete(Integer.parseInt(string));
        }
        return ViewUtil.returnajax(rows, num);
    }

    /**
     * 删除公司
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("deletecompany.html")
    public AjaxMessage<Object> deletecompany(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            rows += companyService.delete(Integer.parseInt(string));
        }
        return ViewUtil.returnajax(rows, num);
    }

}
