package com.topweb.entity;

/**
 * Created by 18710 on 2017/10/7.
 */
public class School {
      int id;
      String uname;
      String jpname;
      String schooladress;
      int schoolnature;
      int buldingschooltime;
    int authentication;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getJpname() {
        return jpname;
    }

    public void setJpname(String jpname) {
        this.jpname = jpname;
    }

    public String getSchooladress() {
        return schooladress;
    }

    public void setSchooladress(String schooladress) {
        this.schooladress = schooladress;
    }

    public int getSchoolnature() {
        return schoolnature;
    }

    public void setSchoolnature(int schoolnature) {
        this.schoolnature = schoolnature;
    }

    public int getBuldingschooltime() {
        return buldingschooltime;
    }

    public void setBuldingschooltime(int buldingschooltime) {
        this.buldingschooltime = buldingschooltime;
    }

    public int getAuthentication() {
        return authentication;
    }

    public void setAuthentication(int authentication) {
        this.authentication = authentication;
    }

    public int getPeoplecount() {
        return peoplecount;
    }

    public void setPeoplecount(int peoplecount) {
        this.peoplecount = peoplecount;
    }

    public int getPopularity() {
        return popularity;
    }

    public void setPopularity(int popularity) {
        this.popularity = popularity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    int peoplecount;
    int popularity;
    String img;

    String phone;
    String synopsis;
    String motto;
    int phd;
    int graduate;
    int undergraduate;
    int speechcenter;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public String getMotto() {
        return motto;
    }

    public void setMotto(String motto) {
        this.motto = motto;
    }

    public int getPhd() {
        return phd;
    }

    public void setPhd(int phd) {
        this.phd = phd;
    }

    public int getGraduate() {
        return graduate;
    }

    public void setGraduate(int graduate) {
        this.graduate = graduate;
    }

    public int getUndergraduate() {
        return undergraduate;
    }

    public void setUndergraduate(int undergraduate) {
        this.undergraduate = undergraduate;
    }

    public int getSpeechcenter() {
        return speechcenter;
    }

    public void setSpeechcenter(int speechcenter) {
        this.speechcenter = speechcenter;
    }
}
