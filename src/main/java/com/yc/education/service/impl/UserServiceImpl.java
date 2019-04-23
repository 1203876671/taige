package com.yc.education.service.impl;

import com.yc.education.mapper.ProductMapper;
import com.yc.education.mapper.UserMapper;
import com.yc.education.model.Product;
import com.yc.education.model.User;
import com.yc.education.service.ProductService;
import com.yc.education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName UserServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 15:17
 * @Version 1.0
 */
@Service
public class UserServiceImpl extends BaseService<User> implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }
}
