package com.yc.education.mapper;

import com.yc.education.model.Invite;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface InviteMapper extends MyMapper<Invite> {

    /**
     * 获取显示招聘信息
     *
     * @return
     */
    public List<Invite> getInvite();

    /**
     * 获取全部招聘信息
     *
     * @return
     */
    public List<Invite> listInvite();

}