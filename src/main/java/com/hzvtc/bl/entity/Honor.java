package com.hzvtc.bl.entity;
public class Honor {
    private Integer id;
    private String honor;
    private String creatdata;
    private Integer sid;
    public Honor() {
        super();
    }
    public Honor(Integer id, String honor, String creatdata, Integer sid) {
        super();
        this.id = id;
        this.honor = honor;
        this.creatdata = creatdata;
        this.sid = sid;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHonor() {
        return this.honor;
    }

    public void setHonor(String honor) {
        this.honor = honor;
    }

    public String getCreatdata() {
        return this.creatdata;
    }

    public void setCreatdata(String creatdata) {
        this.creatdata = creatdata;
    }

    public Integer getSid() {
        return this.sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

}
