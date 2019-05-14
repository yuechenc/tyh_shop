package edu.etime.tyh.pojo;

import java.util.Date;

public class Orders {
    private String orderid;

    private String userid;

    private String orderno;

    private String sendname;

    private String sendadress;

    private String sendtel;

    private String payment;

    private String meno;

    private Date time;

    private Integer tag;

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public String getSendname() {
        return sendname;
    }

    public void setSendname(String sendname) {
        this.sendname = sendname == null ? null : sendname.trim();
    }

    public String getSendadress() {
        return sendadress;
    }

    public void setSendadress(String sendadress) {
        this.sendadress = sendadress == null ? null : sendadress.trim();
    }

    public String getSendtel() {
        return sendtel;
    }

    public void setSendtel(String sendtel) {
        this.sendtel = sendtel == null ? null : sendtel.trim();
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment == null ? null : payment.trim();
    }

    public String getMeno() {
        return meno;
    }

    public void setMeno(String meno) {
        this.meno = meno == null ? null : meno.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getTag() {
        return tag;
    }

    public void setTag(Integer tag) {
        this.tag = tag;
    }
}