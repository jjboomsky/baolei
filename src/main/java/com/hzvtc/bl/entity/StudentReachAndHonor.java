package com.hzvtc.bl.entity;

public class StudentReachAndHonor {
    private Integer rId;
    private String rNoreachtime;
    private String tName;
    private String rType;

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public String getrNoreachtime() {
        return rNoreachtime;
    }

    public void setrNoreachtime(String rNoreachtime) {
        this.rNoreachtime = rNoreachtime;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String getrType() {
        return rType;
    }

    public void setrType(String rType) {
        this.rType = rType;
    }
}
