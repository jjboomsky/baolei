package com.hzvtc.bl.until;

/**
 * Created by 鲍磊的学习机 on 2017/12/7.
 */
public class SimpleMessage {
    private  int code;
    private  String msg;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public SimpleMessage() {
    }

    public SimpleMessage(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
