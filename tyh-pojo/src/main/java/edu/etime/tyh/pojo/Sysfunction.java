package edu.etime.tyh.pojo;

public class Sysfunction {
    private String funid;

    private String funname;

    private String funaddr;

    private String funpid;

    private Integer funstate;

    public String getFunid() {
        return funid;
    }

    public void setFunid(String funid) {
        this.funid = funid == null ? null : funid.trim();
    }

    public String getFunname() {
        return funname;
    }

    public void setFunname(String funname) {
        this.funname = funname == null ? null : funname.trim();
    }

    public String getFunaddr() {
        return funaddr;
    }

    public void setFunaddr(String funaddr) {
        this.funaddr = funaddr == null ? null : funaddr.trim();
    }

    public String getFunpid() {
        return funpid;
    }

    public void setFunpid(String funpid) {
        this.funpid = funpid == null ? null : funpid.trim();
    }

    public Integer getFunstate() {
        return funstate;
    }

    public void setFunstate(Integer funstate) {
        this.funstate = funstate;
    }
}