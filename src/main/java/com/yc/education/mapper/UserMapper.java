package com.yc.education.mapper;

import com.yc.education.model.User;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

public interface UserMapper extends MyMapper<User> {

    /**
     * 添加
     *
     * @return
     */
    public int addUser(User user);


}