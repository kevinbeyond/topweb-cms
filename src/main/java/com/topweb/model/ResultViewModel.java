package com.topweb.model;

/**
 * Created by Leo on 2017/9/19.
 */
public class ResultViewModel {

    private int code;

    private String message;

    private Object object;

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

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    @Override
    public String toString() {
        return "ResultViewModel{" +
                "code=" + code +
                ", message='" + message + '\'' +
                ", object=" + object +
                '}';
    }
}
