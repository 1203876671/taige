package com.yc.education.mapper;

import com.yc.education.model.Admins;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

public interface AdminsMapper extends MyMapper<Admins> {


    public Admins findadminlogin(String loginname, String password);


}