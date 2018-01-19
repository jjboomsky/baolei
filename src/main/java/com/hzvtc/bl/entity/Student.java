package com.hzvtc.bl.entity;
public class Student {
    private Integer sId;
    private Integer sSchoolid;
    private String sActivedcode;
    private String sClass;
    private Integer sPhone;
    private String sFirsttime;
    private String sPassword;
    private Integer sHomephone;
    private String sAddress;
    private String sBedroom;
    private String sStudyid;
    private String sIdnumber;
    private String sSex;
    private String sName;
    public Student() {
        super();
    }
    public Student(Integer sId,Integer sSchoolid,String sActivedcode,String sClass,Integer sPhone,String sFirsttime,String sPassword,Integer sHomephone,String sAddress,String sBedroom,String sStudyid,String sIdnumber,String sSex,String sName) {
        super();
        this.sId = sId;
        this.sSchoolid = sSchoolid;
        this.sActivedcode = sActivedcode;
        this.sClass = sClass;
        this.sPhone = sPhone;
        this.sFirsttime = sFirsttime;
        this.sPassword = sPassword;
        this.sHomephone = sHomephone;
        this.sAddress = sAddress;
        this.sBedroom = sBedroom;
        this.sStudyid = sStudyid;
        this.sIdnumber = sIdnumber;
        this.sSex = sSex;
        this.sName = sName;
    }
    public Integer getSId() {
        return this.sId;
    }

    public void setSId(Integer sId) {
        this.sId = sId;
    }

    public Integer getSSchoolid() {
        return this.sSchoolid;
    }

    public void setSSchoolid(Integer sSchoolid) {
        this.sSchoolid = sSchoolid;
    }

    public String getSActivedcode() {
        return this.sActivedcode;
    }

    public void setSActivedcode(String sActivedcode) {
        this.sActivedcode = sActivedcode;
    }

    public String getSClass() {
        return this.sClass;
    }

    public void setSClass(String sClass) {
        this.sClass = sClass;
    }

    public Integer getSPhone() {
        return this.sPhone;
    }

    public void setSPhone(Integer sPhone) {
        this.sPhone = sPhone;
    }

    public String getSFirsttime() {
        return this.sFirsttime;
    }

    public void setSFirsttime(String sFirsttime) {
        this.sFirsttime = sFirsttime;
    }

    public String getSPassword() {
        return this.sPassword;
    }

    public void setSPassword(String sPassword) {
        this.sPassword = sPassword;
    }

    public Integer getSHomephone() {
        return this.sHomephone;
    }

    public void setSHomephone(Integer sHomephone) {
        this.sHomephone = sHomephone;
    }

    public String getSAddress() {
        return this.sAddress;
    }

    public void setSAddress(String sAddress) {
        this.sAddress = sAddress;
    }

    public String getSBedroom() {
        return this.sBedroom;
    }

    public void setSBedroom(String sBedroom) {
        this.sBedroom = sBedroom;
    }

    public String getSStudyid() {
        return this.sStudyid;
    }

    public void setSStudyid(String sStudyid) {
        this.sStudyid = sStudyid;
    }

    public String getSIdnumber() {
        return this.sIdnumber;
    }

    public void setSIdnumber(String sIdnumber) {
        this.sIdnumber = sIdnumber;
    }

    public String getSSex() {
        return this.sSex;
    }

    public void setSSex(String sSex) {
        this.sSex = sSex;
    }

    public String getSName() {
        return this.sName;
    }

    public void setSName(String sName) {
        this.sName = sName;
    }

}
