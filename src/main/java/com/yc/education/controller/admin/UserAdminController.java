package com.yc.education.controller.admin;

import com.github.pagehelper.PageInfo;
import com.yc.education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName UserAdminController
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/25 9:25
 * @Version 1.0
 */
@Controller
@RequestMapping("admin")
public class UserAdminController {


    @Autowired
    private UserService userService;

    /**
     * 查看所有用户
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("usermanage")
    public ModelAndView getUser(@RequestParam(required = false, defaultValue = "1") int page,
                                @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo", new PageInfo<>(userService.listUser(page, rows)));
        return modelAndView;
    }

    /**
     * 根据Id查看用户
     *
     * @param id
     * @return
     */
    @RequestMapping("showuser")
    public ModelAndView getUser(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user", userService.selectByKey(id));
        return modelAndView;
    }


}
