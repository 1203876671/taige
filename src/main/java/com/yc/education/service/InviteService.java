package com.yc.education.service;

import com.yc.education.model.Invite;

import java.util.List;

/**
 * @ClassName InviteService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 12:40
 * @Version 1.0
 */
public interface InviteService extends IService<Invite> {

    /**
     * 获取招聘信息
     *
     * @return
     */
    public List<Invite> getInvite();

    /**
     * 获取招聘信息分页
     *
     * @return
     */
    public List<Invite> getInvite(int page, int rows);
}
