package com.topweb.model;

/**
 * Created by Leo on 2017/9/26.
 */
public class FileUploadReturnModel {

    /**
     * 文件路径
     */
    String filepath;

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    @Override
    public String toString() {
        return "FileUploadReturnModel{" +
                "filepath='" + filepath + '\'' +
                '}';
    }
}