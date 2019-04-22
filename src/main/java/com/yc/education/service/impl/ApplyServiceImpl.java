package com.yc.education.service.impl;

import com.yc.education.mapper.ApplyMapper;
import com.yc.education.model.Apply;
import com.yc.education.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ApplyServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 17:13
 * @Version 1.0
 */
@Service
public class ApplyServiceImpl extends BaseService<Apply> implements ApplyService {

    @Autowired
    ApplyMapper applyMapper;

    @Override
    public List<Apply> listAppply() {
        return applyMapper.listAppply();
    }
}
