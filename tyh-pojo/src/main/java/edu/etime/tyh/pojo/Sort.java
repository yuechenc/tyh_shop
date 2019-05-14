package edu.etime.tyh.pojo;

import java.io.Serializable;

public class Sort implements Serializable {
    private String sorid;

    private String sorname;

    private Integer sororder;

    private Integer sorstate;

    public String getSorid() {
        return sorid;
    }

    public void setSorid(String sorid) {
        this.sorid = sorid == null ? null : sorid.trim();
    }

    public String getSorname() {
        return sorname;
    }

    public void setSorname(String sorname) {
        this.sorname = sorname == null ? null : sorname.trim();
    }

    public Integer getSororder() {
        return sororder;
    }

    public void setSororder(Integer sororder) {
        this.sororder = sororder;
    }

    public Integer getSorstate() {
        return sorstate;
    }

    public void setSorstate(Integer sorstate) {
        this.sorstate = sorstate;
    }
}