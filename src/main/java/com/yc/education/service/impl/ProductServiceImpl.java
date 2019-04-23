package com.yc.education.service.impl;

import com.yc.education.mapper.ProductMapper;
import com.yc.education.model.Product;
import com.yc.education.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ProductServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 15:17
 * @Version 1.0
 */
@Service
public class ProductServiceImpl extends BaseService<Product> implements ProductService {

    @Autowired
    ProductMapper productMapper;


    @Override
    public List<Product> listProduct() {
        return productMapper.listProduct();
    }

    @Override
    public List<Product> likeProductName(String name) {
        return productMapper.likeProductName(name);
    }
}
