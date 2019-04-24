package com.yc.education.mapper;

import com.yc.education.model.Details;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface DetailsMapper extends MyMapper<Details> {

    /**
     * 根据applyid取对象
     *
     * @return
     */
    public List<Details> listDetails(int applyid);

    /**
     * 根据applyid删除
     *
     * @return
     */
    public void delDetails(int applyid);

}