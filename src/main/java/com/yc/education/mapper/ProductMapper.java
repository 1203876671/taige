package com.yc.education.mapper;

import com.yc.education.model.Product;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface ProductMapper extends MyMapper<Product> {

    /**
     * 查询所有的产品
     *
     * @return
     */
    public List<Product> listProduct();


}