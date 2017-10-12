package com.topweb.entity;

/**
 * Created by 18710 on 2017/9/25.
 */
public class Page {
     int pageNow;
     int pageCount;

    public int getStartNum() {
        return startNum;
    }

    public void setStartNum(int startNum) {
        this.startNum = startNum;
    }

    int nodeCount;
    static int avgPageCount=8;
    int startNum;

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getNodeCount() {
        return nodeCount;
    }

    public void setNodeCount(int nodeCount) {
        this.nodeCount = nodeCount;
    }

    public int getAvgPageCount() {
        return avgPageCount;
    }

    public void setAvgPageCount(int avgPageCount) {
        this.avgPageCount = avgPageCount;
    }
}
