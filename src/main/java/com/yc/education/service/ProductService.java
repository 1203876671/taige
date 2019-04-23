package com.yc.education.service;

import com.yc.education.model.Product;

import java.util.List;

/**
 * @ClassName ProductService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 15:17
 * @Version 1.0
 */
public interface ProductService extends IService<Product> {


    /**
     * 查询所有的产品
     *
     * @return
     */
    public List<Product> listProduct();


    /**
     * 根据产品名称模糊查询
     */
    public List<Product> likeProductName(String name);

}
