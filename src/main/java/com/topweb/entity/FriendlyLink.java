package com.topweb.entity;

/**
 * Created by 18710 on 2017/9/25.
 */
public class FriendlyLink {
      int id;
      int linkType;
    String webAddress;
    String webLogo;
    String webTitle;
    String webKeyWords;
    int sort;
    int egis;
    String contactWay;
    int recommend;
    int mediaOrInstitutions;

    public int getMediaOrInstitutions() {
        return mediaOrInstitutions;
    }

    public void setMediaOrInstitutions(int mediaOrInstitutions) {
        this.mediaOrInstitutions = mediaOrInstitutions;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLinkType() {
        return linkType;
    }

    public void setLinkType(int linkType) {
        this.linkType = linkType;
    }

    public String getWebAddress() {
        return webAddress;
    }

    public void setWebAddress(String webAddress) {
        this.webAddress = webAddress;
    }

    public String getWebLogo() {
        return webLogo;
    }

    public void setWebLogo(String webLogo) {
        this.webLogo = webLogo;
    }

    public String getWebTitle() {
        return webTitle;
    }

    public void setWebTitle(String webTitle) {
        this.webTitle = webTitle;
    }

    public String getWebKeyWords() {
        return webKeyWords;
    }

    public void setWebKeyWords(String webKeyWords) {
        this.webKeyWords = webKeyWords;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public int getEgis() {
        return egis;
    }

    public void setEgis(int egis) {
        this.egis = egis;
    }

    public String getContactWay() {
        return contactWay;
    }

    public void setContactWay(String contactWay) {
        this.contactWay = contactWay;
    }

    public int getRecommend() {
        return recommend;
    }

    public void setRecommend(int recommend) {
        this.recommend = recommend;
    }
}
