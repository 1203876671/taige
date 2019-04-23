package com.yc.education.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Invite {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 招聘内容
     */
    private String context;

    /**
     * 显示状态
     */
    private Integer state;

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
     * 获取招聘内容
     *
     * @return context - 招聘内容
     */
    public String getContext() {
        return context;
    }

    /**
     * 设置招聘内容
     *
     * @param context 招聘内容
     */
    public void setContext(String context) {
        this.context = context;
    }

    /**
     * 获取显示状态
     *
     * @return state - 显示状态
     */
    public Integer getState() {
        return state;
    }

    /**
     * 设置显示状态
     *
     * @param state 显示状态
     */
    public void setState(Integer state) {
        this.state = state;
    }
}