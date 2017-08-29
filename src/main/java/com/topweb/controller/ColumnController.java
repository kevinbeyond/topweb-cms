package com.topweb.controller;

import com.topweb.dao.CMSColumnMapper;
import com.topweb.entity.CMSColumn;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * CMS栏目控制器
 * Created by Leo on 2017/8/29.
 */
@Controller
public class ColumnController {

    private static final Logger logger = LoggerFactory.getLogger(ColumnController.class);

    @Autowired
    private CMSColumnMapper cmsColumnMapper;

    @RequestMapping(value = "/columnList.html")
    public ModelAndView listCMSColumns() {

        ModelAndView view = new ModelAndView("column_list");
        List<CMSColumn> columnList = cmsColumnMapper.selectColumnLists();

        logger.info(String.valueOf(columnList.size()));

        view.addObject("columnList", columnList);
        return view;
    }
}
