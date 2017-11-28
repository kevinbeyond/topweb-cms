package com.topweb.controller;

import com.topweb.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * CMS用户登录
 * Created by Leo on 2017/8/27.
 */
@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/")
    public ModelAndView loginPage() {
        ModelAndView view = new ModelAndView("login");

        view.addObject("user", new User());
        logger.trace("Welcome to TopWeb CMS!");
        return view;
    }

    /**
     * 主页面
     * @param user
     * @param result
     * @return
     */

    @RequestMapping(value = "/index.html", method = RequestMethod.POST)
    public String checkLogin(@Valid User user, BindingResult result) {

        //表单数据校验不通过，返回登录页面
        if (result.hasErrors()) {
            return "login";
        }

        boolean checkResult = false;
        if ("admin".equals(user.getUsername()) && "admin".equals(user.getPassword())) {
            checkResult = true;
        }
        if (checkResult) {
            return "index";
        }
        return "login";
    }

    /**
     * 首页欢迎页
     * @return
     */
    @RequestMapping("/welcome.html")
    public ModelAndView welcomePage(){
        ModelAndView view = new ModelAndView("welcome");

        return view;
    }
}
