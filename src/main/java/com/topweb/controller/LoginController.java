package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * CMS主页
 * Created by Leo on 2017/8/27.
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/")
    public String loginPage() {
         return "login";
    }
}
