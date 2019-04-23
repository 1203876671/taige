package com.yc.education.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yc.education.model.News;
import com.yc.education.service.NewsService;
import com.yc.education.util.AjaxMessage;
import com.yc.education.util.ViewUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("admin")
public class NewsAdminController {
//extends BaseController

    /**
     * Service
     */
    @Autowired
    private NewsService newsService;

    /**
     * 查询并分页
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("newsbrand.html")
    public ModelAndView newsbrand(@RequestParam(required = false, defaultValue = "1") int type,
                                  @RequestParam(required = false, defaultValue = "1") int page,
                                  @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView modelAndView = new ModelAndView();
        List<News> listnewsOrderSortAndDate = newsService.listnewsOrderSortAndDate(type, page, rows);
        modelAndView.addObject("type", type);
        modelAndView.addObject("pageInfo", new PageInfo<>(listnewsOrderSortAndDate));
        return modelAndView;
    }

    /**
     * 编辑基金对象
     *
     * @param id
     * @return
     */
    @RequestMapping("newsadd.html")
    public ModelAndView getnews(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("news", newsService.getNewsById(id));
        return modelAndView;
    }

    @RequestMapping(value = "insertnews.html")
    public ModelAndView insertArticle(@RequestParam("file") MultipartFile fimg, News news, String editorValue, HttpServletRequest request) throws java.text.ParseException, IOException {
        news.setContent(editorValue);
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String format = df.format(new Date());
        news.setDate(format);
        String fileNames = null;
        if (fimg.getOriginalFilename() != null && !"".equals(fimg.getOriginalFilename())) {
            String contextPath = request.getSession().getServletContext().getContextPath();
            String upaloadUrl = request.getSession().getServletContext().getRealPath("/") + "ajaxupload";
            //上传文件名
            String filename = fimg.getOriginalFilename();
            Random r = new Random();
            StringBuffer buf = new StringBuffer();
            for (int x = 0; x < 3; x++) {//循环取得三个不大于10的随机整数
                buf.append(r.nextInt(10));//
            }
            filename = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + buf.toString() + filename.substring(filename.lastIndexOf("."));
            File filepath = new File(upaloadUrl, filename);
            //判断路径是否存在
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件中
            request.getSession().setAttribute("img", "1");
            fimg.transferTo(new File(upaloadUrl + File.separator + filename));
            fileNames = contextPath + "/ajaxupload/" + filename;
            news.setImg(fileNames);
        }
        if (news.getId() != null && !"".equals(news.getId())) {
            newsService.updateNotNull(news);
        } else {
            newsService.save(news);
        }
        ModelAndView newsbrand = newsbrand(1, 1, 10);
        newsbrand.setViewName("admin/newsbrand");
        return newsbrand;
    }

    /**
     * 删除新闻
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("deletenews.html")
    public AjaxMessage<Object> deletenews(String id) {
        String[] idlist = id.split(",");
        int num = idlist.length;
        int rows = 0;
        for (String string : idlist) {
            rows += newsService.delete(Integer.parseInt(string));
        }
        return ViewUtil.returnajax(rows, num);
    }

}
