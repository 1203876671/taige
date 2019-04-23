package com.yc.education.service.impl;

import com.github.pagehelper.PageHelper;
import com.yc.education.mapper.CompanyMapper;
import com.yc.education.model.Company;
import com.yc.education.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName CompanyServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 17:59
 * @Version 1.0
 */
@Service
public class CompanyServiceImpl extends BaseService<Company> implements CompanyService {

    @Autowired
    CompanyMapper companyMapper;


    @Override
    public Company getCompany(int type) {
        return companyMapper.getCompany(type);
    }

    @Override
    public List<Company> company() {
        return companyMapper.company();
    }

    @Override
    public List<Company> company(int page, int rows) {
        PageHelper.startPage(page, rows);
        return companyMapper.listcompany();
    }
}
