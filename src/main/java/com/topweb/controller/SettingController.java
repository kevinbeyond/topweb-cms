package com.topweb.controller;

import com.topweb.dao.CMSConfigMapper;
import com.topweb.entity.CMSConfig;
import com.topweb.model.CMSConfigList;
import com.topweb.model.ResultCode;
import com.topweb.model.ResultViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 设置菜单控制器
 * Created by Leo on 2017/9/11.
 */
@RequestMapping("/setting")
@Controller
public class SettingController {

    @Autowired
    private CMSConfigMapper cmsConfigMapper;

    /**
     * 网站信息设置
     * @return
     */
    @RequestMapping("baseWebInfo.html")
    public ModelAndView baseWebInfoSetting() {
        ModelAndView view = new ModelAndView("base_web_info");

        List<CMSConfig> configs = cmsConfigMapper.selectCMSConfigs();
        for (CMSConfig tempConfig:configs) {
            view.addObject(tempConfig.getName(), tempConfig.getValue());
        }
        return view;
    }

    /**
     * 提交基本信息配置
     * @param configList
     * @return
     */
    @RequestMapping(value = "submitBaseSetting.html", method = RequestMethod.POST)
    public ResultViewModel submitBaseWebInfoSetting(@RequestBody List<CMSConfig> configList){
        ResultViewModel result = new ResultViewModel();

        try{
            for (CMSConfig tempConfig:configList) {
                CMSConfig queryConfig = cmsConfigMapper.selectByConfigName(tempConfig.getName());
                if (queryConfig != null) {
                    tempConfig.setId(queryConfig.getId());
                    cmsConfigMapper.updateByPrimaryKeySelective(tempConfig);
                } else {
                    cmsConfigMapper.insert(tempConfig);
                }
            }

            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        }catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }

        return result;
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
