package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Leo on 2017/10/12.
 */
@Controller
public class DemoController {

    @RequestMapping("/upload.html")
    public ModelAndView uploaImage() {
        return new ModelAndView("upload");
    }

    @RequestMapping(value = "/upload")
    public String uploadFile(MultipartFile file) {
        if (file != null){
            System.out.println(file.getName());
        }
        return null;
    }
}
