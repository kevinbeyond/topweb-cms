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
}
