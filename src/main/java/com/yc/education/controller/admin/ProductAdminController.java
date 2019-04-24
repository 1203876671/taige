package com.yc.education.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yc.education.model.Apply;
import com.yc.education.model.Details;
import com.yc.education.model.Prodetails;
import com.yc.education.model.Product;
import com.yc.education.service.ApplyService;
import com.yc.education.service.DetailsService;
import com.yc.education.service.ProdetailsService;
import com.yc.education.service.ProductService;
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
public class ProductAdminController {


    @Autowired
    private ProductService productService;

    @Autowired
    private ProdetailsService prodetailsService;

    /**
     * 后台查询所有应用
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("productmanage")
    public ModelAndView applymanage(@RequestParam(required = false, defaultValue = "1") int page,
                                    @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo", new PageInfo<>(productService.listProduct(page, rows)));
        return modelAndView;
    }


    /**
     * 应用信息查看
     */
    @RequestMapping("upproduct.html")
    public ModelAndView upinvite(@RequestParam(required = false, defaultValue = "0") int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("product", productService.selectByKey(id));
        return modelAndView;
    }

    /**
     * 添加或修改应用信息
     *
     * @param product
     * @param request
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertproduct.html")
    public ModelAndView insertapply(Product product, HttpServletRequest request) throws java.text.ParseException, IOException {
        if (product.getId() != null && !"".equals(product.getId())) {
            productService.updateNotNull(product);
        } else {
            productService.save(product);
        }
        ModelAndView modelAndView = ViewUtil.returnview(10, "productmanage.html", "产品管理");
        return modelAndView;
    }

    /**
     * 应用信息查看
     */
    @RequestMapping("prodetailsmanage.html")
    public ModelAndView prodetailsmanage(@RequestParam(required = false, defaultValue = "1") int page,
                                         @RequestParam(required = false, defaultValue = "10") int rows, int proid, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        session.setAttribute("proid", proid);
        modelAndView.addObject("pageInfo", new PageInfo<>(prodetailsService.listProDetails(page, rows, proid)));
        return modelAndView;
    }

    /**
     * 删除应用分类
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("deleteproduct.html")
    public AjaxMessage<Object> deleteapply(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            prodetailsService.delProDetails(Integer.parseInt(string));
            rows += productService.delete(Integer.parseInt(string));
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
    @RequestMapping("deleteprodetails.html")
    public AjaxMessage<Object> deleteprodetails(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            rows += prodetailsService.delete(Integer.parseInt(string));
        }
        return ViewUtil.returnajax(rows, num);
    }

    /**
     * 添加对象
     *
     * @param id
     * @return
     */
    @RequestMapping("upprodetails.html")
    public ModelAndView updetails(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("prodetails", prodetailsService.selectByKey(id));
        return modelAndView;
    }


    /**
     * 添加或修改应用产品
     *
     * @return
     * @throws java.text.ParseException
     * @throws IOException
     */
    @RequestMapping(value = "insertprodetalis.html")
    public ModelAndView insertdetalis(@RequestParam("filename") MultipartFile filename, Prodetails details, HttpSession session, HttpServletRequest request) throws java.text.ParseException, IOException {
        details.setFile(upload(request, filename));
        System.out.println(details);
        if (details.getId() != null && !"".equals(details.getId())) {
            prodetailsService.updateNotNull(details);
        } else {
            prodetailsService.save(details);
        }
        ModelAndView returnview = ViewUtil.returnview(10, "prodetailsmanage.html?proid=" + details.getProid(), "产品详情");
        return returnview;
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
