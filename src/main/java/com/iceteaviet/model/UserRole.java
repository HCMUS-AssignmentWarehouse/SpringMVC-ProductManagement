package com.iceteaviet.model;

/**
 * Created by Genius Doan on 6/7/2017.
 */
public class UserRole {

    private Integer userRoleId;
    private User user;
    private String role;

    public UserRole() {

    }

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    //getter and setter methods
}
