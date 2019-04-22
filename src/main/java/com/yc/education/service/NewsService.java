package com.yc.education.service;

import com.yc.education.model.News;

import java.util.List;

/**
 * @ClassName NewsServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/12 13:37
 * @Version 1.0
 */
public interface NewsService extends IService<News> {

    /**
     * 根据排序和日期查询所有新闻
     *
     * @return
     */
    public List<News> listnewsOrderSortAndDate(Integer type, int page, int rows);

    /**
     * 根据ID查看新闻对象
     *
     * @param id
     * @return
     */
    public News getNewsById(int id);

    /**
     * 修改news
     *
     * @param news
     */
    public void updateNewsById(News news);

    /**
     * 添加基金
     *
     * @param news
     */
    public void insertNews(News news);

    /**
     * 查询所有新闻
     *
     * @return
     */
    public List<News> listNews(String page, String rows);

}
