package com.yc.education.mapper;

import com.yc.education.model.Company;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface CompanyMapper extends MyMapper<Company> {


    /**
     * 根据类型查询公司
     *
     * @return
     */
    public Company getCompany(int type);

    /**
     * 查看公司
     */
    public Company company();

}