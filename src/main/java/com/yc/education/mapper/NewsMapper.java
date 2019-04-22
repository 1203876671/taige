package com.yc.education.mapper;

import com.yc.education.model.News;
import com.yc.education.util.MyMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface NewsMapper extends MyMapper<News> {

    /**
     * 根据排序和日期查询所有新闻
     *
     * @return
     */
    @Select("SELECT id,title,author,content,outline,img,date,sort,type FROM news order by (sort+0),date desc")
    public List<News> listnewsOrderSortAndDate();

    /**
     * 根据ID查看新闻对象
     *
     * @param id
     * @return
     */
    @Select("SELECT id,title,author,content,outline,img,date,sort,type FROM news WHERE id = #{id}")
    public News getNewsById(Integer id);

    /**
     * 根据name模糊查询
     *
     * @param type
     * @return
     */
    @Select("SELECT id,title,author,content,outline,img,date,sort,type FROM news WHERE type = #{type} order by (sort+0),date desc")
    public List<News> listNewsListName(@Param("type") Integer type);

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
    @Select("SELECT id,title,author,content,outline,img,date,sort,type FROM news")
    public List<News> listNews();
}