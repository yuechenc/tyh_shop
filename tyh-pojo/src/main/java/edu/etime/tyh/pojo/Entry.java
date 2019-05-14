package edu.etime.tyh.pojo;

public class Entry {
    private String entryid;

    private String orderid;

    private String userid;

    private String proid;

    private String price;

    private Integer count;

    public String getEntryid() {
        return entryid;
    }

    public void setEntryid(String entryid) {
        this.entryid = entryid == null ? null : entryid.trim();
    }

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

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid == null ? null : proid.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}