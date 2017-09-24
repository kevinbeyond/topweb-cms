package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 友情链接
 * Created by Leo on 2017/9/24.
 */
@RequestMapping("/market")
@Controller
public class FriendshipLinkController {


    @RequestMapping("/friendshiplink.html")
    public ModelAndView friendshipLinkSetting(){
        ModelAndView view = new ModelAndView("friendship_link");

        return view;
    }
}
