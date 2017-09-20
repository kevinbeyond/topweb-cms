package com.topweb.model;

/**
 * Created by Leo on 2017/9/19.
 */
public class ResultViewModel {

    private int code;

    private String message;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "ResultViewModel{" +
                "code=" + code +
                ", message='" + message + '\'' +
                '}';
    }
}
