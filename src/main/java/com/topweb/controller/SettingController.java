package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 设置菜单控制器
 * Created by Leo on 2017/9/11.
 */
@RequestMapping("/setting")
@Controller
public class SettingController {

    /**
     * 网站信息设置
     * @return
     */
    @RequestMapping("baseWebInfo.html")
    public ModelAndView baseWebInfoSetting() {
        ModelAndView view = new ModelAndView("base_web_info");
        return view;
    }

    /**
     * 第三方代码设置
     * @return
     */
    @RequestMapping("base3rdInfo.html")
    public ModelAndView base3rdInfoSetting() {
        ModelAndView view = new ModelAndView("base_3rd_info");
        return view;
    }
}
