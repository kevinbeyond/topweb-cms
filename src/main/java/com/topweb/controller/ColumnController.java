package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Leo on 2017/9/21.
 */
@Controller
public class ColumnController {

    @RequestMapping("columns.html")
    public ModelAndView columnsSetting() {
        ModelAndView view = new ModelAndView("column_list");
        return view;
    }
}
