package com.yc.education.mapper;

import com.yc.education.model.Invite;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

public interface InviteMapper extends MyMapper<Invite> {

    /**
     * 获取招聘信息
     *
     * @return
     */
    public Invite getInvite();

}