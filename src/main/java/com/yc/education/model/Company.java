package com.yc.education.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 公司内容
     */
    private String context;

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
     * 显示类型
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
     * 获取显示类型
     *
     * @return type - 显示类型
     */
    public String getType() {
        return type;
    }

    /**
     * 设置显示类型
     *
     * @param type 显示类型
     */
    public void setType(String type) {
        this.type = type;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}