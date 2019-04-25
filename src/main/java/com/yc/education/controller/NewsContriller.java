package com.yc.education.controller;

import com.github.pagehelper.PageInfo;
import com.yc.education.model.News;
import com.yc.education.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @ClassName NewsContriller
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 13:53
 * @Version 1.0
 */
@Controller
public class NewsContriller {

    /**
     * 新闻
     */
    @Autowired
    private NewsService newsService;


    /**
     * 新闻页面
     *
     * @return
     */
    @RequestMapping("news.html")
    public ModelAndView listNews(@RequestParam(required = false, defaultValue = "1") int page,
                                 @RequestParam(required = false, defaultValue = "10") int rows,
                                 @RequestParam(required = false, defaultValue = "0") int type, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        session.setAttribute("type", type);
        List<News> newsList = newsService.listnewsOrderSortAndDate(type, page, rows);
        modelAndView.addObject("pageInfo", new PageInfo<>(newsList));
        return modelAndView;
    }

    /**
     * 新闻详情页面
     *
     * @return
     */
    @RequestMapping("news_content.html")
    public ModelAndView listNews(int id) {
        ModelAndView modelAndView = new ModelAndView();
        News news = newsService.getNewsById(id);
        News newsById1 = newsService.getNewsById1(id);
        News newsById2 = newsService.getNewsById2(id);
        modelAndView.addObject("news", news);
        modelAndView.addObject("newsById1", newsById1);
        modelAndView.addObject("newsById2", newsById2);
        return modelAndView;
    }

}
