package com.yc.education.service.impl;

import com.github.pagehelper.PageHelper;
import com.yc.education.mapper.NewsMapper;
import com.yc.education.model.News;
import com.yc.education.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName NewsServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/12 13:38
 * @Version 1.0
 */
@Service
public class NewsServiceImpl extends BaseService<News> implements NewsService {

    @Autowired
    NewsMapper newsMapper;


    @Override
    public List<News> listnewsOrderSortAndDate(Integer type, int page, int rows) {
        PageHelper.startPage(page, rows);
        if (type == null) {
            return newsMapper.listnewsOrderSortAndDate();
        } else {
            return newsMapper.listNewsListName(type);
        }

    }

    @Override
    public News getNewsById(int id) {
        return newsMapper.getNewsById(id);
    }


    @Override
    public void updateNewsById(News news) {
        newsMapper.updateNewsById(news);
    }

    @Override
    public void insertNews(News news) {
        newsMapper.insertNews(news);
    }

    @Override
    public List<News> listNews(String page, String rows) {
        Integer pages = 0;
        if (page != null && !"".equals(page) && rows != null && !"".equals(rows)) {
            if (Integer.parseInt(page) == 0) {
                pages = 1;
            }
            PageHelper.startPage(pages, Integer.parseInt(rows));
        }
        return newsMapper.listNews();
    }

    @Override
    public News getNewsById1(Integer id) {
        return newsMapper.getNewsById1(id);
    }

    @Override
    public News getNewsById2(Integer id) {
        return newsMapper.getNewsById2(id);
    }
}
