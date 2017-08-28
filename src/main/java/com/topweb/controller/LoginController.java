package com.topweb.controller;

import com.topweb.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * CMS主页
 * Created by Leo on 2017/8/27.
 */
@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/")
    public ModelAndView loginPage() {
        ModelAndView view = new ModelAndView("login");
        view.addObject("user", new User());
        logger.trace("Hello World!");
        return view;
    }

    @RequestMapping(value = "/result.html", method = RequestMethod.POST)
    public String checkLogin(User user) {
        boolean checkResult = false;

        if ("admin".equals(user.getUsername()) && "admin".equals(user.getPassword())) {
            checkResult = true;
        }

        if (checkResult) {
            return "index";
        }
        return null;
    }
}
