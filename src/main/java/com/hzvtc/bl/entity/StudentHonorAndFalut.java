package com.hzvtc.bl.entity;

import java.util.List;

public class StudentHonorAndFalut {

    private Integer sId;
    private Integer sSchoolid;
    private String sSex;
    private String sName;
    private String honor;
    private String fault;

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getsSchoolid() {
        return sSchoolid;
    }

    public void setsSchoolid(Integer sSchoolid) {
        this.sSchoolid = sSchoolid;
    }

    public String getsSex() {
        return sSex;
    }

    public void setsSex(String sSex) {
        this.sSex = sSex;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getHonor() {
        return honor;
    }

    public void setHonor(String honor) {
        this.honor = honor;
    }

    public String getFault() {
        return fault;
    }

    public void setFault(String fault) {
        this.fault = fault;
    }
}
