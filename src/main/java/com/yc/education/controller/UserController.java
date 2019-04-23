package com.yc.education.controller;

import com.yc.education.model.User;
import com.yc.education.service.UserService;
import com.yc.education.util.AjaxMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName UserController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 10:40
 * @Version 1.0
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;


    /**
     * 索取泰格样品
     *
     * @return
     */
    @RequestMapping("addUser.html")
    public AjaxMessage<User> addUser(User user) {
        AjaxMessage ajaxMessage = new AjaxMessage();
        int save = userService.addUser(user);
        if (save > 0) {
            ajaxMessage.setIs(true);
            ajaxMessage.setMsg("添加成功");
        } else {
            ajaxMessage.setMsg("添加失败");
            ajaxMessage.setIs(false);
        }
        System.out.println(ajaxMessage);
        return ajaxMessage;
    }

}
