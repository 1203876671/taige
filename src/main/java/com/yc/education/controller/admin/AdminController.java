package com.yc.education.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.*;

import com.yc.education.model.Admins;
import com.yc.education.util.AjaxMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.yc.education.service.AdminsService;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
//extends BaseController

    @Autowired
    AdminsService adminsService;


    // 用来产生随机验证码的
    private static Random rand = new Random();

    private static String[] str = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};

    //跳转·管理员登录
    @RequestMapping("admin/login.html")
    public ModelAndView adminlogin() {
        return new ModelAndView();
    }

    /**
     * welcome 页面
     *
     * @return
     */
    @RequestMapping("admin/welcome.html")
    public ModelAndView welcome() {
        return new ModelAndView();
    }

    //登陆成功--跳转
    @RequestMapping("admin/index.jsp")
    public ModelAndView index(HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        ModelAndView result = new ModelAndView();
        //判断管理员时候登录 没有登录定向到登录页面
        Admins loginname = (Admins) request.getSession().getAttribute("adminlogin");
        if (loginname == null) {
            try {
                response.sendRedirect("login.html");
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return result;
    }

    //处理·管理员登录
    @RequestMapping("admin/adminlogins.html")
    public ModelAndView aminlogins(String loginname, String password, Admins admins, HttpSession session) {
        //回调信息
        String msg = "* 请输入正确的账号和密码!";
        Admins login = adminsService.findadminlogin(loginname, password);
        System.err.println(loginname + "===" + password);
        if (login != null) {
            ModelAndView result = new ModelAndView("admin/index");
            session.setAttribute("adminlogin", login);
            return result;
        } else {
            ModelAndView result = new ModelAndView("admin/login");
            result.addObject("msg", msg);
            return result;
        }
    }

    /**
     * 管理员修改密码
     */
    @RequestMapping("admin/updadmin.html")
    public ModelAndView updadmin(String adPass) {
        ModelAndView result = new ModelAndView();
        return result;
    }

    /**
     * ajax 查询管理员密码
     */
    @ResponseBody
    @RequestMapping("admin/ajaxpass.html")
    public AjaxMessage<Admins> ajaxpass(String adPass) {
        AjaxMessage<Admins> ajax = new AjaxMessage<>();
        Admins admins = adminsService.selectByKey(1);
        if (admins.getPassword().equals(adPass)) {
            ajax.setIs(true);
            ajax.setMsg("查询成功");
            ajax.setData(admins);
        } else {
            ajax.setMsg("* 请输入正确密码!");
            ;
            ajax.setIs(false);
        }
        return ajax;
    }

    /**
     * 修改管理员密码
     */
    @ResponseBody
    @RequestMapping("admin/updadmins.html")
    public AjaxMessage<Object> updadmins(Admins admins) {
        AjaxMessage<Object> ajax = new AjaxMessage<>();
        int rows = adminsService.updateNotNull(admins);
        return ajax;
    }

    /**
     * ajax -- 上传图片
     *
     * @param request
     * @return
     * @throws IllegalStateException
     * @throws IOException
     */
    @RequestMapping(value = "admin/uploadImage", method = RequestMethod.POST)
    public @ResponseBody
    String uploadImage(HttpServletRequest request) throws IllegalStateException, IOException {
        System.out.println("进入控制层");
        String pathString = "";
        String allpath = "";

        List<String> paths = new ArrayList<>();
        // 设置上下文
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        // 检查form是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator<String> iter = multiRequest.getFileNames();
            while (iter.hasNext()) {
                // 由CommonsMultipartFile继承而来,拥有上面的方法.
                MultipartFile file = multiRequest.getFile(iter.next());
                System.out.println("file:" + file.getSize());
                // 如果文件不为空，则进行处理
                if (!file.isEmpty()) {
                    // 存放产生的随机数
                    String sms = "";
                    // 生成三位数的随机数
                    StringBuffer buf = new StringBuffer();
                    for (int i = 0; i < 3; i++) {
                        buf.append(str[rand.nextInt(10)]);
                    }
                    // 对图片文件名进行处理，取得最后的6个字符，然后以"."为分隔符取得文件后缀
                    String originalFileName = file.getOriginalFilename();

                    // 取得后缀
                    String suffixString = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);

                    // 设定文件名称
                    String fileName = sms + new Date().getTime() + "." + suffixString;

                    //
                    String path = request.getSession().getServletContext().getRealPath("/");
                    String contextPath = request.getSession().getServletContext().getContextPath();

                    File localFile = new File(path + "upload\\" + fileName);
                    System.err.println(path + "upload\\" + fileName);

                    try {
                        file.transferTo(localFile);
                        // 将图片名称和相对路径存到数据库中
                        paths.add("/pic/chat/" + fileName);
                        pathString = contextPath + "/upload/" + fileName;
                        allpath = path + "upload/" + fileName;
                    } catch (IllegalStateException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return pathString;
    }

}
