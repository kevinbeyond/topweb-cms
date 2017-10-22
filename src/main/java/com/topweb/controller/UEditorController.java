package com.topweb.controller;

import com.baidu.ueditor.ActionEnter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

/**
 * Created by Leo on 2017/10/17.
 */
@Controller
@RequestMapping("/ueditor")
public class UEditorController {

    @RequestMapping("/upload")
    public @ResponseBody String ueditorUploadImage(HttpServletRequest request,
                              HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding( "utf-8" );
        response.setHeader("Content-Type" , "text/html");

        String rootPath = request.getServletContext().getRealPath("/") + "static/";

        return new ActionEnter( request, rootPath ).exec();
    }
}
