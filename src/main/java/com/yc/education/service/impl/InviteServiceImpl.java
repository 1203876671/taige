package com.yc.education.service.impl;

import com.github.pagehelper.PageHelper;
import com.yc.education.mapper.InviteMapper;
import com.yc.education.model.Invite;
import com.yc.education.service.InviteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName InviteServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 12:41
 * @Version 1.0
 */
@Service
public class InviteServiceImpl extends BaseService<Invite> implements InviteService {

    @Autowired
    InviteMapper inviteMapper;


    @Override
    public List<Invite> getInvite() {
        return inviteMapper.getInvite();
    }

    @Override
    public List<Invite> getInvite(int page, int rows) {
        PageHelper.startPage(page, rows);
        return inviteMapper.listInvite();
    }
}
