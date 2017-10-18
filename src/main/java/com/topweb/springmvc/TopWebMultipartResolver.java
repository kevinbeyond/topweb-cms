package com.topweb.springmvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Leo on 2017/10/18.
 */
public class TopWebMultipartResolver extends CommonsMultipartResolver {

    private static Logger logger = LoggerFactory.getLogger(TopWebMultipartResolver.class);

    @Override
    public boolean isMultipart(HttpServletRequest request) {
        String uri = request.getRequestURI();
        System.out.println(uri);
        //过滤使用百度UEditor的URI
        if (uri.indexOf("ueditor/") > 0) { //此处拦截路径即为上面编写的controller路径
            logger.info("commonsMultipartResolver 放行");
            return false;
        }
        logger.info("commonsMultipartResolver 拦截");
        return super.isMultipart(request);
    }
}
