package com.yc.education.util;

import org.springframework.web.servlet.ModelAndView;

/**
 * 返回ModelAndView 帮助类避免 重复 代码
 */
public class ViewUtil {


    /**
     * 进行添加  更新操作时候 返回 ModelAndView
     * @param rows
     * @param url
     * @param title
     * @return ModelAndView 对象
     */
    public static ModelAndView returnview(int rows, String url, String title){
        ModelAndView  result = new ModelAndView();
        if (rows>0){
            result= new ModelAndView("success");
        }else{
            result= new ModelAndView("error");
        }
        result.addObject("url",url);
        result.addObject("title",title);
        return result;
    }

    /**
     * 进行 ajax 删除操作时 返回操作状态
     * @param rows
     * @param num
     * @return ajax
     */
    public  static AjaxMessage<Object> returnajax(int rows, int num){
        AjaxMessage<Object> ajax= new AjaxMessage<>();
        if (rows == num) {
            ajax.setIs(true);
            ajax.setMsg("删除成功！");
        } else {
            ajax.setIs(false);
            ajax.setMsg("删除失败！");
        }
        return  ajax;
    }





}
