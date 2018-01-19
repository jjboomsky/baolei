package com.hzvtc.bl.entity;
public class Score {
    private Integer scId;
    private Integer scStudentid;
    private Integer scCourseid;
    private Integer scScore;
    private String scExamtime;
    public Score() {
        super();
    }
    public Score(Integer scId,Integer scStudentid,Integer scCourseid,Integer scScore,String scExamtime) {
        super();
        this.scId = scId;
        this.scStudentid = scStudentid;
        this.scCourseid = scCourseid;
        this.scScore = scScore;
        this.scExamtime = scExamtime;
    }
    public Integer getScId() {
        return this.scId;
    }

    public void setScId(Integer scId) {
        this.scId = scId;
    }

    public Integer getScStudentid() {
        return this.scStudentid;
    }

    public void setScStudentid(Integer scStudentid) {
        this.scStudentid = scStudentid;
    }

    public Integer getScCourseid() {
        return this.scCourseid;
    }

    public void setScCourseid(Integer scCourseid) {
        this.scCourseid = scCourseid;
    }

    public Integer getScScore() {
        return this.scScore;
    }

    public void setScScore(Integer scScore) {
        this.scScore = scScore;
    }

    public String getScExamtime() {
        return this.scExamtime;
    }

    public void setScExamtime(String scExamtime) {
        this.scExamtime = scExamtime;
    }

}
