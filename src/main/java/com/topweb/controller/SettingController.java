package com.topweb.controller;

import com.topweb.dao.CMSConfigMapper;
import com.topweb.entity.CMSConfig;
import com.topweb.model.FileUploadReturnModel;
import com.topweb.model.ResultCode;
import com.topweb.model.ResultViewModel;
import com.topweb.util.ConstantUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
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
    @ResponseBody
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
     * 图片上传
     * @param image
     * @return
     */
    @RequestMapping(value = "upload", method = RequestMethod.POST)
    @ResponseBody
    public ResultViewModel uploadImage(@RequestParam("file")MultipartFile image) {

        ResultViewModel result = new ResultViewModel();

        String path = ConstantUtil.SETTING_UPLOAD_DIR;
        String fileName = System.currentTimeMillis()+"_" + image.getOriginalFilename();
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        //保存
        try {
            image.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
            result.setCode(ResultCode.UPLOAD_FAIL);
            result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
            return result;
        }

        //json.put("filePath",request.getContextPath() + "/upload/" + fileName);
        //File retfile = new File(SysConstants.PIC_SERVER_DNS + SysConstants.PIC_PTYPE_DIR, fileName);
        File retfile = new File("F:\\TopWeb\\topweb-cms\\src\\main\\webapp\\static\\images\\upload", fileName);

        result.setCode(ResultCode.UPLOAD_SUCCESS);
        result.setMessage(ResultCode.UPLOAD_SUCCESS_MSG);
        FileUploadReturnModel returnModel = new FileUploadReturnModel();
        returnModel.setFilepath("/images/upload/" + fileName);
        result.setObject(returnModel);
//        json.put("filePath",retfile.getPath());
//        System.out.println("json="+json.toJSONString());
        return  result;
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
