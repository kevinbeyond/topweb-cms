package com.topweb.controller;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
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

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
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
    @RequestMapping("/baseWebInfo.html")
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
    @RequestMapping(value = "/submitBaseSetting", method = RequestMethod.POST, produces = {"application/json;","text/html;charset=UTF-8;"})
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
    @RequestMapping(value = "/upload", method = RequestMethod.POST, produces = {"application/json;","text/html;charset=UTF-8;"})
    @ResponseBody
    public ResultViewModel uploadImage(@RequestParam("file")MultipartFile image) {

        ResultViewModel result = new ResultViewModel();
        //上传七牛云服务器
        Configuration cfg = new Configuration(Zone.zone1());//华北机房
        UploadManager uploadManager = new UploadManager(cfg);
        Auth auth = Auth.create(ConstantUtil.QINIU_ACCESS_KEY, ConstantUtil.QINIU_SECRET_KEY);
        String upToken = auth.uploadToken(ConstantUtil.QINIU_BUCKET);

        String key = System.currentTimeMillis()+"_" + image.getOriginalFilename();
        try {
            Response response = uploadManager.put(image.getBytes(), key, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            if (putRet != null) {

                FileUploadReturnModel returnModel = new FileUploadReturnModel();
                returnModel.setFilepath(key);
                returnModel.setOriginal("../" + key);
                result.setObject(returnModel);
                result.setCode(ResultCode.UPLOAD_SUCCESS);
                result.setMessage(ResultCode.UPLOAD_SUCCESS_MSG);
            } else {
                result.setCode(ResultCode.UPLOAD_FAIL);
                result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
                return result;
            }
        } catch (QiniuException ex) {
            Response r = ex.response;
            result.setCode(ResultCode.UPLOAD_FAIL);
            result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
            return result;
        } catch (IOException e) {
            e.printStackTrace();
            result.setCode(ResultCode.UPLOAD_FAIL);
            result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
            return result;
        }
//        String path = request.getServletContext().getRealPath("/") + ConstantUtil.IMAGES_UPLOAD_DIR;
//        String fileName = System.currentTimeMillis()+"_" + image.getOriginalFilename();
//        File targetFile = new File(path, fileName);
//        if (!targetFile.exists()) {
//            targetFile.mkdirs();
//        }
//        //保存
//        try {
//            image.transferTo(targetFile);
//        } catch (Exception e) {
//            e.printStackTrace();
//            result.setCode(ResultCode.UPLOAD_FAIL);
//            result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
//            return result;
//        }

        //json.put("filePath",request.getContextPath() + "/upload/" + fileName);
        //File retfile = new File(SysConstants.PIC_SERVER_DNS + SysConstants.PIC_PTYPE_DIR, fileName);
//        File retfile = new File(ConstantUtil.IMAGES_UPLOAD_DIR, fileName);

//        result.setCode(ResultCode.UPLOAD_SUCCESS);
//        result.setMessage(ResultCode.UPLOAD_SUCCESS_MSG);
//        FileUploadReturnModel returnModel = new FileUploadReturnModel();
//        returnModel.setFilepath("images/upload/" + fileName);
//        returnModel.setOriginal("../images/upload/" + fileName);
//        result.setObject(returnModel);
//        json.put("filePath",retfile.getPath());
//        System.out.println("json="+json.toJSONString());
        return  result;
    }

    /**
     * 第三方代码设置
     * @return
     */
    @RequestMapping("/base3rdInfo.html")
    public ModelAndView base3rdInfoSetting() {
        ModelAndView view = new ModelAndView("base_3rd_info");
        return view;
    }
}
