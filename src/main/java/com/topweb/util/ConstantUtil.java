package com.topweb.util;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Leo on 2017/10/1.
 */
public class ConstantUtil {

    /**
     * 设置板块图片上传地址
     */
    public static String SETTING_UPLOAD_DIR = "F:\\TopWeb\\topweb-cms\\src\\main\\webapp\\static\\images\\upload";

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
