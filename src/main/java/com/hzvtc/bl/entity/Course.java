package com.hzvtc.bl.entity;
public class Course {
    private Integer cId;
    private String cClassid;
    private Integer cTeacherid;
    private String cCoursename;
    public Course() {
        super();
    }
    public Course(Integer cId,String cClassid,Integer cTeacherid,String cCoursename) {
        super();
        this.cId = cId;
        this.cClassid = cClassid;
        this.cTeacherid = cTeacherid;
        this.cCoursename = cCoursename;
    }
    public Integer getCId() {
        return this.cId;
    }

    public void setCId(Integer cId) {
        this.cId = cId;
    }

    public String getCClassid() {
        return this.cClassid;
    }

    public void setCClassid(String cClassid) {
        this.cClassid = cClassid;
    }

    public Integer getCTeacherid() {
        return this.cTeacherid;
    }

    public void setCTeacherid(Integer cTeacherid) {
        this.cTeacherid = cTeacherid;
    }

    public String getCCoursename() {
        return this.cCoursename;
    }

    public void setCCoursename(String cCoursename) {
        this.cCoursename = cCoursename;
    }

}
