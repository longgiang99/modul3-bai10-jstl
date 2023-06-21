package model;

import com.sun.prism.Image;

import java.util.Date;

public class Customer {
    private String name;
    private String address;
    private String birthday;
    private String img;

    public Customer() {
    }

    public Customer(String name, String address, String birthday, String img) {
        this.name = name;
        this.address = address;
        this.birthday = birthday;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}