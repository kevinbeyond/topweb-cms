package com.topweb.util;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Leo on 2017/10/1.
 */
public class ConstantUtil {

    /**
     * 七牛云密钥管理
     */
    public static String QINIU_ACCESS_KEY = "ApknYHvAXQOY5TE0b06W4YQTMV9bYecRwiOCzyzK";

    public static String QINIU_SECRET_KEY = "jA8vjBfC4imkQFgLO_VJtT1ZmZ1Ie9igBOk_rIwL";

    public static String QINIU_BUCKET = "ycjxschool";

    public static String QINIU_DEFAULT_DOMAIN = "http://oy4m5h68i.bkt.clouddn.com/";
    /**
     * 图片上传文件夹
     */
    public static String IMAGES_UPLOAD_DIR = "static/images/upload";

    /**
     * 栏目是否在导航栏上显示
     * @return
     */
    public static Map<Integer, String> navConfigs(){
        Map<Integer, String> navConfig = new HashMap<Integer, String>();
        navConfig.put(0, "不显示");
        navConfig.put(1, "头部主导航条");
        navConfig.put(2, "尾部导航条");
        navConfig.put(3, "都显示");

        return navConfig;
    }

    /**
     * 模块配置
     * @return
     */
    public static Map<Integer, String> moduleConfigs(){
        Map<Integer, String> moduleConfig = new HashMap<Integer, String>();
        moduleConfig.put(1, "简介模块");
        moduleConfig.put(2, "文章模块");
        moduleConfig.put(3, "图片模块");

        return moduleConfig;
    }
}
