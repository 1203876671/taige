package com.yc.education.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Details {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 产品类型
     */
    private Integer applyid;

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
     * 产品用途
     */
    private String use;

    /**
     * 应用名称
     */
    private String applyname;

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
     * @return applyid - 产品类型
     */
    public Integer getApplyid() {
        return applyid;
    }

    /**
     * 设置产品类型
     *
     * @param applyid 产品类型
     */
    public void setApplyid(Integer applyid) {
        this.applyid = applyid;
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
     * 获取产品用途
     *
     * @return use - 产品用途
     */
    public String getUse() {
        return use;
    }

    /**
     * 设置产品用途
     *
     * @param use 产品用途
     */
    public void setUse(String use) {
        this.use = use;
    }

    /**
     * 获取应用名称
     *
     * @return applyname - 应用名称
     */
    public String getApplyname() {
        return applyname;
    }

    /**
     * 设置应用名称
     *
     * @param applyname 应用名称
     */
    public void setApplyname(String applyname) {
        this.applyname = applyname;
    }
}