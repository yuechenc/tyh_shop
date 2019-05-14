package edu.etime.tyh.pojo;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable{
    private String proid;

    private String sorid;
    
    private String sorname;

    public String getSorname() {
		return sorname;
	}

	public void setSorname(String sorname) {
		this.sorname = sorname;
	}

	private String proname;

    private Short salecount;

    private String image;

    private String price;

    private String saleprice;

    private Date saledate;

    private String decript;

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid == null ? null : proid.trim();
    }

    public String getSorid() {
        return sorid;
    }

    public void setSorid(String sorid) {
        this.sorid = sorid == null ? null : sorid.trim();
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname == null ? null : proname.trim();
    }

    public Short getSalecount() {
        return salecount;
    }

    public void setSalecount(Short salecount) {
        this.salecount = salecount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(String saleprice) {
        this.saleprice = saleprice == null ? null : saleprice.trim();
    }

    public Date getSaledate() {
        return saledate;
    }

    public void setSaledate(Date saledate) {
        this.saledate = saledate;
    }

    public String getDecript() {
        return decript;
    }

    public void setDecript(String decript) {
        this.decript = decript == null ? null : decript.trim();
    }
}