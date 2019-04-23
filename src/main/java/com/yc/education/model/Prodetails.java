package com.yc.education.model;

import javax.persistence.*;

public class Prodetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 产品类型
     */
    private Integer proid;

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
    private String uses;

    /**
     * 溶剂
     */
    private String solvent;

    /**
     * 适用体系
     */
    private String system;

    /**
     * 外观
     */
    private String appearance;

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
     * @return proid - 产品类型
     */
    public Integer getProid() {
        return proid;
    }

    /**
     * 设置产品类型
     *
     * @param proid 产品类型
     */
    public void setProid(Integer proid) {
        this.proid = proid;
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
     * @return uses - 产品用途
     */
    public String getUses() {
        return uses;
    }

    /**
     * 设置产品用途
     *
     * @param uses 产品用途
     */
    public void setUses(String uses) {
        this.uses = uses;
    }

    /**
     * 获取溶剂
     *
     * @return solvent - 溶剂
     */
    public String getSolvent() {
        return solvent;
    }

    /**
     * 设置溶剂
     *
     * @param solvent 溶剂
     */
    public void setSolvent(String solvent) {
        this.solvent = solvent;
    }

    /**
     * 获取适用体系
     *
     * @return system - 适用体系
     */
    public String getSystem() {
        return system;
    }

    /**
     * 设置适用体系
     *
     * @param system 适用体系
     */
    public void setSystem(String system) {
        this.system = system;
    }

    /**
     * 获取外观
     *
     * @return appearance - 外观
     */
    public String getAppearance() {
        return appearance;
    }

    /**
     * 设置外观
     *
     * @param appearance 外观
     */
    public void setAppearance(String appearance) {
        this.appearance = appearance;
    }
}