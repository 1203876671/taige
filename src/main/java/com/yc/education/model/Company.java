package com.yc.education.model;

import javax.persistence.*;

public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 公司内容
     */
    private String context;

    /**
     * 价值传递
     */
    private String delivery;

    /**
     * 安全环保
     */
    private String security;

    /**
     * 愿景
     */
    private String vision;

    /**
     * 公司电话
     */
    private String phone;

    /**
     * 公司邮箱
     */
    private String emil;

    /**
     * 公司地址
     */
    private String address;

    /**
     * 显示类型（1，公司简介，2公司愿景，3安全环保，4价值传递）
     */
    private String type;

    /**
     * 显示状态0不显示1显示
     */
    private Integer state;

    /**
     * 公司名称
     */
    private String name;

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
     * 获取公司内容
     *
     * @return context - 公司内容
     */
    public String getContext() {
        return context;
    }

    /**
     * 设置公司内容
     *
     * @param context 公司内容
     */
    public void setContext(String context) {
        this.context = context;
    }

    /**
     * 获取价值传递
     *
     * @return delivery - 价值传递
     */
    public String getDelivery() {
        return delivery;
    }

    /**
     * 设置价值传递
     *
     * @param delivery 价值传递
     */
    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    /**
     * 获取安全环保
     *
     * @return security - 安全环保
     */
    public String getSecurity() {
        return security;
    }

    /**
     * 设置安全环保
     *
     * @param security 安全环保
     */
    public void setSecurity(String security) {
        this.security = security;
    }

    /**
     * 获取愿景
     *
     * @return vision - 愿景
     */
    public String getVision() {
        return vision;
    }

    /**
     * 设置愿景
     *
     * @param vision 愿景
     */
    public void setVision(String vision) {
        this.vision = vision;
    }

    /**
     * 获取公司电话
     *
     * @return phone - 公司电话
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置公司电话
     *
     * @param phone 公司电话
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取公司邮箱
     *
     * @return emil - 公司邮箱
     */
    public String getEmil() {
        return emil;
    }

    /**
     * 设置公司邮箱
     *
     * @param emil 公司邮箱
     */
    public void setEmil(String emil) {
        this.emil = emil;
    }

    /**
     * 获取公司地址
     *
     * @return address - 公司地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置公司地址
     *
     * @param address 公司地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取显示类型（1，公司简介，2公司愿景，3安全环保，4价值传递）
     *
     * @return type - 显示类型（1，公司简介，2公司愿景，3安全环保，4价值传递）
     */
    public String getType() {
        return type;
    }

    /**
     * 设置显示类型（1，公司简介，2公司愿景，3安全环保，4价值传递）
     *
     * @param type 显示类型（1，公司简介，2公司愿景，3安全环保，4价值传递）
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取显示状态0不显示1显示
     *
     * @return state - 显示状态0不显示1显示
     */
    public Integer getState() {
        return state;
    }

    /**
     * 设置显示状态0不显示1显示
     *
     * @param state 显示状态0不显示1显示
     */
    public void setState(Integer state) {
        this.state = state;
    }

    /**
     * 获取公司名称
     *
     * @return name - 公司名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置公司名称
     *
     * @param name 公司名称
     */
    public void setName(String name) {
        this.name = name;
    }
}