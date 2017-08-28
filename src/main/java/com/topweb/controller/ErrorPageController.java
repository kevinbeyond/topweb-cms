package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 错误异常页面控制器
 * Created by Leo on 2017/8/28.
 */
@Controller
public class ErrorPageController {

    @RequestMapping(value = "/error/403.html")
    public String error403Page() {
        return "/error/403";
    }

    @RequestMapping(value = "/error/404.html")
    public String error404Page() {
        return "/error/404";
    }


}
