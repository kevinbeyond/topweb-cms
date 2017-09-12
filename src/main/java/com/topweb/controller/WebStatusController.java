package com.topweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Leo on 2017/8/26.
 */
@Controller
public class WebStatusController {

    /**
     * 处理HEAD请求，用来检测服务器状态。
     * 不返回body，比GET请求更节省网络资源
     */
    @RequestMapping(value = "/", method = RequestMethod.HEAD)
    public String checkWebStatus(){

        return "web_status";
    }

}
