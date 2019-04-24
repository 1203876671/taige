package com.yc.education.service.impl;

import com.github.pagehelper.PageHelper;
import com.yc.education.mapper.ProdetailsMapper;
import com.yc.education.mapper.ProductMapper;
import com.yc.education.model.Prodetails;
import com.yc.education.model.Product;
import com.yc.education.service.ProdetailsService;
import com.yc.education.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ProdetailsServiceImpl
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 10:08
 * @Version 1.0
 */
@Service
public class ProdetailsServiceImpl extends BaseService<Prodetails> implements ProdetailsService {

    @Autowired
    ProdetailsMapper prodetailsService;

    @Override
    public List<Prodetails> listProDetails(int proid) {
        return prodetailsService.listProDetails(proid);
    }

    @Override
    public List<Prodetails> listProDetails(int page, int rows, int proid) {
        PageHelper.startPage(page, rows);
        return prodetailsService.listProDetails(proid);
    }

    @Override
    public List<Prodetails> proDetails() {
        return prodetailsService.proDetails();
    }

    @Override
    public void delProDetails(int proid) {
        prodetailsService.delProDetails(proid);
    }
}
