package com.yc.education.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 产品类型
     */
    private Integer type;

    /**
     * 产品名称
     */
    private String name;

    /**
     * 活性成分
     */
    private String ingredients;

    /**
     * 同类产品
     */
    private String likeproduct;

    /**
     * 产品简介
     */
    private String introduction;

    /**
     * 产品图片
     */
    private String img;

    /**
     * 产品用途
     */
    private String uses;

    /**
     * 排序
     */
    private String sort;

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

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
     * 获取产品类型
     *
     * @return type - 产品类型
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置产品类型
     *
     * @param type 产品类型
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取产品名称
     *
     * @return name - 产品名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置产品名称
     *
     * @param name 产品名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取活性成分
     *
     * @return ingredients - 活性成分
     */
    public String getIngredients() {
        return ingredients;
    }

    /**
     * 设置活性成分
     *
     * @param ingredients 活性成分
     */
    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    /**
     * 获取同类产品
     *
     * @return likeproduct - 同类产品
     */
    public String getLikeproduct() {
        return likeproduct;
    }

    /**
     * 设置同类产品
     *
     * @param likeproduct 同类产品
     */
    public void setLikeproduct(String likeproduct) {
        this.likeproduct = likeproduct;
    }

    /**
     * 获取产品简介
     *
     * @return introduction - 产品简介
     */
    public String getIntroduction() {
        return introduction;
    }

    /**
     * 设置产品简介
     *
     * @param introduction 产品简介
     */
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    /**
     * 获取产品图片
     *
     * @return img - 产品图片
     */
    public String getImg() {
        return img;
    }

    /**
     * 设置产品图片
     *
     * @param img 产品图片
     */
    public void setImg(String img) {
        this.img = img;
    }

    public String getUses() {
        return uses;
    }

    public void setUses(String uses) {
        this.uses = uses;
    }
}