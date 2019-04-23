package com.yc.education.service;

import com.yc.education.model.Prodetails;

import java.util.List;

/**
 * @ClassName ProdetailsService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 10:08
 * @Version 1.0
 */
public interface ProdetailsService extends IService<Prodetails> {

    /**
     * 根据proid取对象
     *
     * @return
     */
    public List<Prodetails> listProDetails(int proid);

}
