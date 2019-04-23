package com.yc.education.util;

/**
 * @author hugeng
 * @date 2018/12/5 13:50
 */
public class ApiMessage<T> {

    public ApiMessage(){}
    public ApiMessage(boolean is, String code, String msg, T data){
        this.msg = msg;
        this.code = code;
        this.data = data;
        this.is = is;
    }
    /**
     * 提示信息
     */
    private String code;
    /**
     * 提示信息
     */
    private String msg;

    /**
     * 返回的数据
     */
    private T data;

    /**
     * 是否成功
     */
    private Boolean is;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public Boolean getIs() {
        return is;
    }

    public void setIs(Boolean is) {
        this.is = is;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
