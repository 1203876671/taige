package com.yc.education.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 新闻标题
     */
    private String title;

    /**
     * 新闻类别
     */
    private Integer type;

    /**
     * 新闻发表时间
     */
    private String date;

    /**
     * 作者
     */
    private String author;

    /**
     * 内容
     */
    private String content;

    /**
     * 新闻概要
     */
    private String outline;

    /**
     * 新闻图片
     */
    private String img;

    /**
     * 排列顺序
     */
    private String sort;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取新闻标题
     *
     * @return title - 新闻标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置新闻标题
     *
     * @param title 新闻标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取新闻发表时间
     *
     * @return date - 新闻发表时间
     */
    public String getDate() {
        return date;
    }

    /**
     * 设置新闻发表时间
     *
     * @param date 新闻发表时间
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * 获取作者
     *
     * @return author - 作者
     */
    public String getAuthor() {
        return author;
    }

    /**
     * 设置作者
     *
     * @param author 作者
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * 获取内容
     *
     * @return content - 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 获取新闻概要
     *
     * @return outline - 新闻概要
     */
    public String getOutline() {
        return outline;
    }

    /**
     * 设置新闻概要
     *
     * @param outline 新闻概要
     */
    public void setOutline(String outline) {
        this.outline = outline;
    }

    /**
     * 获取新闻图片
     *
     * @return img - 新闻图片
     */
    public String getImg() {
        return img;
    }

    /**
     * 设置新闻图片
     *
     * @param img 新闻图片
     */
    public void setImg(String img) {
        this.img = img;
    }

    /**
     * 获取排列顺序
     *
     * @return sort - 排列顺序
     */
    public String getSort() {
        return sort;
    }

    /**
     * 设置排列顺序
     *
     * @param sort 排列顺序
     */
    public void setSort(String sort) {
        this.sort = sort;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}