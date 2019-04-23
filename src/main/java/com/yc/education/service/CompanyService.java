package com.yc.education.service;

import com.yc.education.model.Company;

import java.util.List;

/**
 * @ClassName CompanyService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 17:59
 * @Version 1.0
 */
public interface CompanyService extends IService<Company> {

    /**
     * 根据类型查询公司
     *
     * @return
     */
    public Company getCompany(int type);


    /**
     * 查看公司
     */
    public List<Company> company();

    public List<Company> company(int page, int rows);
}
