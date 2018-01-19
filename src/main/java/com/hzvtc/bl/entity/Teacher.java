package com.hzvtc.bl.entity;
public class Teacher {
    private Integer tId;
    private String tIdnumber;
    private String tPassword;
    private String tActivedcode;
    private String tAddress;
    private String tTeacherid;
    private Integer tIfadmin;
    private String tName;
    private Integer tPhone;
    private Integer tHomephone;
    private String tFirsttime;
    public Teacher() {
        super();
    }
    public Teacher(Integer tId,String tIdnumber,String tPassword,String tActivedcode,String tAddress,String tTeacherid,Integer tIfadmin,String tName,Integer tPhone,Integer tHomephone,String tFirsttime) {
        super();
        this.tId = tId;
        this.tIdnumber = tIdnumber;
        this.tPassword = tPassword;
        this.tActivedcode = tActivedcode;
        this.tAddress = tAddress;
        this.tTeacherid = tTeacherid;
        this.tIfadmin = tIfadmin;
        this.tName = tName;
        this.tPhone = tPhone;
        this.tHomephone = tHomephone;
        this.tFirsttime = tFirsttime;
    }
    public Integer getTId() {
        return this.tId;
    }

    public void setTId(Integer tId) {
        this.tId = tId;
    }

    public String getTIdnumber() {
        return this.tIdnumber;
    }

    public void setTIdnumber(String tIdnumber) {
        this.tIdnumber = tIdnumber;
    }

    public String getTPassword() {
        return this.tPassword;
    }

    public void setTPassword(String tPassword) {
        this.tPassword = tPassword;
    }

    public String getTActivedcode() {
        return this.tActivedcode;
    }

    public void setTActivedcode(String tActivedcode) {
        this.tActivedcode = tActivedcode;
    }

    public String getTAddress() {
        return this.tAddress;
    }

    public void setTAddress(String tAddress) {
        this.tAddress = tAddress;
    }

    public String getTTeacherid() {
        return this.tTeacherid;
    }

    public void setTTeacherid(String tTeacherid) {
        this.tTeacherid = tTeacherid;
    }

    public Integer getTIfadmin() {
        return this.tIfadmin;
    }

    public void setTIfadmin(Integer tIfadmin) {
        this.tIfadmin = tIfadmin;
    }

    public String getTName() {
        return this.tName;
    }

    public void setTName(String tName) {
        this.tName = tName;
    }

    public Integer getTPhone() {
        return this.tPhone;
    }

    public void setTPhone(Integer tPhone) {
        this.tPhone = tPhone;
    }

    public Integer getTHomephone() {
        return this.tHomephone;
    }

    public void setTHomephone(Integer tHomephone) {
        this.tHomephone = tHomephone;
    }

    public String getTFirsttime() {
        return this.tFirsttime;
    }

    public void setTFirsttime(String tFirsttime) {
        this.tFirsttime = tFirsttime;
    }

}
