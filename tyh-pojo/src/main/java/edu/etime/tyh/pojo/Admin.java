package edu.etime.tyh.pojo;

public class Admin {
    private String admid;

    private String roleid;

    private String admusername;

    private String admpwd;

    private String admrealname;

    private String admsex;

    private String admphpne;

    private String admaddr;

    private Integer admstate;

    public String getAdmid() {
        return admid;
    }

    public void setAdmid(String admid) {
        this.admid = admid == null ? null : admid.trim();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getAdmusername() {
        return admusername;
    }

    public void setAdmusername(String admusername) {
        this.admusername = admusername == null ? null : admusername.trim();
    }

    public String getAdmpwd() {
        return admpwd;
    }

    public void setAdmpwd(String admpwd) {
        this.admpwd = admpwd == null ? null : admpwd.trim();
    }

    public String getAdmrealname() {
        return admrealname;
    }

    public void setAdmrealname(String admrealname) {
        this.admrealname = admrealname == null ? null : admrealname.trim();
    }

    public String getAdmsex() {
        return admsex;
    }

    public void setAdmsex(String admsex) {
        this.admsex = admsex == null ? null : admsex.trim();
    }

    public String getAdmphpne() {
        return admphpne;
    }

    public void setAdmphpne(String admphpne) {
        this.admphpne = admphpne == null ? null : admphpne.trim();
    }

    public String getAdmaddr() {
        return admaddr;
    }

    public void setAdmaddr(String admaddr) {
        this.admaddr = admaddr == null ? null : admaddr.trim();
    }

    public Integer getAdmstate() {
        return admstate;
    }

    public void setAdmstate(Integer admstate) {
        this.admstate = admstate;
    }
}