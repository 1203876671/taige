package com.yc.education.service;

import com.yc.education.model.Apply;

import java.util.List;

/**
 * @ClassName ApplyService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/22 17:13
 * @Version 1.0
 */
public interface ApplyService extends IService<Apply> {

    /**
     * 查询所有的应用
     *
     * @return
     */
    public List<Apply> listAppply();

    /**
     * 查询所有的应用 分页
     *
     * @return
     */
    public List<Apply> listAppply(int page, int rows);


}
