package com.yc.education.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 姓名
     */
    private String name;

    /**
     * 地址
     */
    private String address;

    /**
     * 公司名称
     */
    private String companyname;

    /**
     * 手机号码
     */
    private String phone;

    /**
     * 职位信息
     */
    private String post;

    /**
     * 邮箱
     */
    private String emli;

    /**
     * 备注
     */
    private String remark;

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
     * 获取姓名
     *
     * @return name - 姓名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置姓名
     *
     * @param name 姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取地址
     *
     * @return address - 地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置地址
     *
     * @param address 地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取公司名称
     *
     * @return companyname - 公司名称
     */
    public String getCompanyname() {
        return companyname;
    }

    /**
     * 设置公司名称
     *
     * @param companyname 公司名称
     */
    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    /**
     * 获取手机号码
     *
     * @return phone - 手机号码
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置手机号码
     *
     * @param phone 手机号码
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取职位信息
     *
     * @return post - 职位信息
     */
    public String getPost() {
        return post;
    }

    /**
     * 设置职位信息
     *
     * @param post 职位信息
     */
    public void setPost(String post) {
        this.post = post;
    }

    /**
     * 获取邮箱
     *
     * @return emli - 邮箱
     */
    public String getEmli() {
        return emli;
    }

    /**
     * 设置邮箱
     *
     * @param emli 邮箱
     */
    public void setEmli(String emli) {
        this.emli = emli;
    }

    /**
     * 获取备注
     *
     * @return remark - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }
}