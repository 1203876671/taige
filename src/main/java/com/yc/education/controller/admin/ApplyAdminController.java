package com.yc.education.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yc.education.model.Apply;
import com.yc.education.model.Company;
import com.yc.education.model.Details;
import com.yc.education.service.ApplyService;
import com.yc.education.service.DetailsService;
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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @ClassName ApplyAdminController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/24 9:14
 * @Version 1.0
 */
@Controller
@RequestMapping("admin")
public class ApplyAdminController {


    @Autowired
    private ApplyService applyService;

    @Autowired
    private DetailsService detailsService;

    /**
     * 后台查询所有应用
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("applymanage")
    public ModelAndView applymanage(@RequestParam(required = false, defaultValue = "1") int page,
                                    @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo", new PageInfo<>(applyService.listAppply(page, rows)));
        return modelAndView;
    }


    /**
     * 应用信息查看
     */
    @RequestMapping("upapply.html")
    public ModelAndView upinvite(@RequestParam(required = false, defaultValue = "0") int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("apply", applyService.selectByKey(id));
        return modelAndView;
    }

    /**
     * 添加或修改应用信息
     *
     * @param apply
     * @param request
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertapply.html")
    public ModelAndView insertapply(Apply apply, HttpServletRequest request) throws java.text.ParseException, IOException {
        if (apply.getId() != null && !"".equals(apply.getId())) {
            applyService.updateNotNull(apply);
        } else {
            applyService.save(apply);
        }
        ModelAndView modelAndView = ViewUtil.returnview(10, "applymanage.html", "应用管理");
        return modelAndView;
    }

    /**
     * 应用信息查看
     */
    @RequestMapping("applydetailsmanage.html")
    public ModelAndView applydetailsmanage(@RequestParam(required = false, defaultValue = "1") int page,
                                           @RequestParam(required = false, defaultValue = "10") int rows, int applyid, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        session.setAttribute("applyid", applyid);
        modelAndView.addObject("pageInfo", new PageInfo<>(detailsService.listDetails(page, rows, applyid)));
        return modelAndView;
    }

    /**
     * 删除应用分类
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("deleteapply.html")
    public AjaxMessage<Object> deleteapply(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            detailsService.delDetails(Integer.parseInt(string));
            rows += applyService.delete(Integer.parseInt(string));
        }
        return ViewUtil.returnajax(rows, num);
    }

    /**
     * 删除应用详情
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("deletedetails.html")
    public AjaxMessage<Object> deletedetails(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            rows += detailsService.delete(Integer.parseInt(string));
        }
        return ViewUtil.returnajax(rows, num);
    }

    /**
     * 添加对象
     *
     * @param id
     * @return
     */
    @RequestMapping("updetails.html")
    public ModelAndView updetails(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("details", detailsService.selectByKey(id));
        return modelAndView;
    }


    /**
     * 添加或修改应用产品
     *
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertdetalis.html")
    public ModelAndView insertdetalis(@RequestParam("filename") MultipartFile filename, Details details, HttpSession session, HttpServletRequest request) throws java.text.ParseException, IOException {
        details.setFile(upload(request, filename));
        if (details.getId() != null && !"".equals(details.getId())) {
            detailsService.updateNotNull(details);
        } else {
            detailsService.save(details);
        }
        ModelAndView modelAndView = ViewUtil.returnview(10, "applydetailsmanage.html?applyid=" + details.getApplyid(), "应用产品管理");
        return modelAndView;
    }

    /**
     * 文件上传util
     *
     * @param request
     * @param file
     * @return
     * @throws IOException
     */
    public String upload(HttpServletRequest request, MultipartFile file) throws IOException {
        if (file.getOriginalFilename() != null && !"".equals(file.getOriginalFilename())) {
            String contextPath = request.getSession().getServletContext().getContextPath();
            String filenames = null;
            String upaloadUrl = request.getSession().getServletContext().getRealPath("/") + "ajaxupload";
            //上传文件名
            String filename = file.getOriginalFilename();
            Random r = new Random();
            StringBuffer buf = new StringBuffer();
            for (int x = 0; x < 3; x++) {           //循环取得三个不大于10的随机整数
                buf.append(r.nextInt(10));
            }
            filename = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + buf.toString() + filename.substring(filename.lastIndexOf("."));
            File filepath = new File(upaloadUrl, filename);
            //判断路径是否存在
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            String fileNames = null;
            //将上传文件保存到一个目标文件中
            request.getSession().setAttribute("img", "1");
            file.transferTo(new File(upaloadUrl + File.separator + filename));
            fileNames = contextPath + "/ajaxupload/" + filename;
            return fileNames;
        } else {
            return null;
        }
    }

}
