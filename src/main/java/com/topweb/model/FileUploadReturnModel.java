package com.topweb.model;

/**
 * Created by Leo on 2017/9/26.
 */
public class FileUploadReturnModel {

    /**
     * 文件路径
     */
    String filepath;

    String original;

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getOriginal() {
        return original;
    }

    public void setOriginal(String original) {
        this.original = original;
    }

    @Override
    public String toString() {
        return "FileUploadReturnModel{" +
                "filepath='" + filepath + '\'' +
                ", original='" + original + '\'' +
                '}';
    }
}