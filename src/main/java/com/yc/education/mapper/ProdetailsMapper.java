package com.yc.education.mapper;

import com.yc.education.model.Details;
import com.yc.education.model.Prodetails;
import com.yc.education.model.Product;
import com.yc.education.util.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface ProdetailsMapper extends MyMapper<Prodetails> {


    /**
     * 根据proid取对象
     *
     * @return
     */
    public List<Prodetails> listProDetails(int proid);


    /**
     * 取所有对象
     *
     * @return
     */
    public List<Prodetails> proDetails();

    /**
     * 取所有对象
     *
     * @return
     */
    public List<Product> likeProDetailsName(String name);

    /**
     * 根据proid删除
     *
     * @return
     */
    public void delProDetails(int proid);
}