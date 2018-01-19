package com.hzvtc.bl.until;

/**
 * Created by 鲍磊的学习机 on 2017/12/8.
 */
public class LayuiTableUntil {
    private int page;
    private int limit;
    private String sName;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public LayuiTableUntil(int page, int limit, String sName) {
        this.page = page;
        this.limit = limit;
        this.sName = sName;
    }

    public LayuiTableUntil() {
    }
}
