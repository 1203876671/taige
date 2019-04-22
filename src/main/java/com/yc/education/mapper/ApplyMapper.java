package com.yc.education.mapper;

import com.yc.education.model.Apply;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface ApplyMapper extends MyMapper<Apply> {


    /**
     * 查询所有的应用
     *
     * @return
     */
    public List<Apply> listAppply();


}