package com.topweb.model;

/**
 * Created by Leo on 2017/9/20.
 */
public interface ResultCode {

    /**
     * 接口数据正确返回
     */
    Integer SUCCESS = 0;

    /**
     * 正确返回信息
     */
    String SUCCESS_MSG = "SUCCESS";

    /**
     * 接口数据返回错误
     */
    Integer ERROR = 100;

    /**
     * 错误返回信息
     */
    String ERROR_MSG = "FAIL";

    /**
     * 图片上传成功
     */
    Integer UPLOAD_SUCCESS = 10;

    /**
     * 图片上传成功返回信息
     */
    String UPLOAD_SUCCESS_MSG = "UPLOAD SUCCESS";

    /**
     * 上传失败错误码
     */
    Integer UPLOAD_FAIL = 20;

    /**
     * 上传失败返回信息
     */
    String UPLOAD_FAIL_MSG = "UPLOAD FAIL";
}
