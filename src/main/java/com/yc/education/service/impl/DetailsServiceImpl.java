package com.yc.education.service.impl;

import com.yc.education.mapper.DetailsMapper;
import com.yc.education.model.Details;
import com.yc.education.service.DetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName DetailsServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 9:15
 * @Version 1.0
 */
@Service
public class DetailsServiceImpl extends BaseService<Details> implements DetailsService {

    @Autowired
    DetailsMapper detailsMapper;

    @Override
    public List<Details> listDetails(int applyid) {
        return detailsMapper.listDetails(applyid);
    }
}
