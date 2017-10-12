package com.topweb.entity;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.topweb.util.CustomJsonDateDeserializer;

import java.util.Date;

public class CMSArticle {
    private Integer id;

    private String title;

    private String ctitle;

    private String keywords;

    private Integer class1;

    private Integer class2;

    private Integer class3;

    private Integer noOrder;

    private String imgurl;

    private Integer recommend;

    private String issue;

    private Integer hits;

    @JsonDeserialize(using = CustomJsonDateDeserializer.class)
    private Date updatetime;

    @JsonDeserialize(using = CustomJsonDateDeserializer.class)
    private Date addtime;

    private Integer top;

    private Integer display;

    private String links;

    private Integer del;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getCtitle() {
        return ctitle;
    }

    public void setCtitle(String ctitle) {
        this.ctitle = ctitle == null ? null : ctitle.trim();
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    public Integer getClass1() {
        return class1;
    }

    public void setClass1(Integer class1) {
        this.class1 = class1;
    }

    public Integer getClass2() {
        return class2;
    }

    public void setClass2(Integer class2) {
        this.class2 = class2;
    }

    public Integer getClass3() {
        return class3;
    }

    public void setClass3(Integer class3) {
        this.class3 = class3;
    }

    public Integer getNoOrder() {
        return noOrder;
    }

    public void setNoOrder(Integer noOrder) {
        this.noOrder = noOrder;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public Integer getRecommend() {
        return recommend;
    }

    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue == null ? null : issue.trim();
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public Integer getTop() {
        return top;
    }

    public void setTop(Integer top) {
        this.top = top;
    }

    public Integer getDisplay() {
        return display;
    }

    public void setDisplay(Integer display) {
        this.display = display;
    }

    public String getLinks() {
        return links;
    }

    public void setLinks(String links) {
        this.links = links == null ? null : links.trim();
    }

    public Integer getDel() {
        return del;
    }

    public void setDel(Integer del) {
        this.del = del;
    }
}