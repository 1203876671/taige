package com.yc.education.service;

import com.yc.education.model.Product;
import com.yc.education.model.User;

import java.util.List;

/**
 * @ClassName ProductService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 15:17
 * @Version 1.0
 */
public interface UserService extends IService<User> {

    /**
     * 添加
     *
     * @return
     */
    public int addUser(User user);

    /**
     * 查看所有
     */
    public List<User> listUser(int page,int rows);
}
