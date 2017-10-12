package com.topweb.model;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Created by Leo on 2017/8/28.
 */
public class User {

    /**
     * 用户名
     */
    @NotEmpty
    private String username;

    /**
     * 密码
     */
    @NotEmpty
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
