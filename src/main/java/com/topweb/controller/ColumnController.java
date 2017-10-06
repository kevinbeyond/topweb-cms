package com.topweb.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Leo on 2017/9/21.
 */
public class ColumnController {

    @RequestMapping("columns.html")
    public ModelAndView columnsSetting() {
        ModelAndView view = new ModelAndView("");
        return view;
    }
}
