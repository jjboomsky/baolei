package com.hzvtc.bl.entity;
public class Reach {
    private Integer rId;
    private Integer rTid;
    private Integer rSid;
    private Integer rCid;
    private String rNoreachtime;
    private String rType;
    public Reach() {
        super();
    }
    public Reach(Integer rId,Integer rTid,Integer rSid,Integer rCid,String rNoreachtime,String rType) {
        super();
        this.rId = rId;
        this.rTid = rTid;
        this.rSid = rSid;
        this.rCid = rCid;
        this.rNoreachtime = rNoreachtime;
        this.rType = rType;
    }
    public Integer getRId() {
        return this.rId;
    }

    public void setRId(Integer rId) {
        this.rId = rId;
    }

    public Integer getRTid() {
        return this.rTid;
    }

    public void setRTid(Integer rTid) {
        this.rTid = rTid;
    }

    public Integer getRSid() {
        return this.rSid;
    }

    public void setRSid(Integer rSid) {
        this.rSid = rSid;
    }

    public Integer getRCid() {
        return this.rCid;
    }

    public void setRCid(Integer rCid) {
        this.rCid = rCid;
    }

    public String getRNoreachtime() {
        return this.rNoreachtime;
    }

    public void setRNoreachtime(String rNoreachtime) {
        this.rNoreachtime = rNoreachtime;
    }

    public String getRType() {
        return this.rType;
    }

    public void setRType(String rType) {
        this.rType = rType;
    }

}
