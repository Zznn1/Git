package com.appinfo.entity;

import java.math.BigDecimal;
import java.util.Date;

public class app_info {
    private Integer id;

    private String softwarename;

    private String apkname;

    private String supportrom;

    @Override
    public String toString() {
        return "app_info{" +
                "id=" + id +
                ", softwarename='" + softwarename + '\'' +
                ", apkname='" + apkname + '\'' +
                ", supportrom='" + supportrom + '\'' +
                ", interfacelanguage='" + interfacelanguage + '\'' +
                ", softwaresize=" + softwaresize +
                ", updatedate=" + updatedate +
                ", devid=" + devid +
                ", appinfo='" + appinfo + '\'' +
                ", status=" + status +
                ", onsaledate=" + onsaledate +
                ", offsaledate=" + offsaledate +
                ", flatformid=" + flatformid +
                ", categorylevel3=" + categorylevel3 +
                ", downloads=" + downloads +
                ", createdby=" + createdby +
                ", creationdate=" + creationdate +
                ", modifyby=" + modifyby +
                ", modifydate=" + modifydate +
                ", categorylevel1=" + categorylevel1 +
                ", categorylevel2=" + categorylevel2 +
                ", logopicpath='" + logopicpath + '\'' +
                ", logolocpath='" + logolocpath + '\'' +
                ", statusName='" + statusName + '\'' +
                ", flatformName='" + flatformName + '\'' +
                ", categoryLevel1Name='" + categoryLevel1Name + '\'' +
                ", categoryLevel2Name='" + categoryLevel2Name + '\'' +
                ", categoryLevel3Name='" + categoryLevel3Name + '\'' +
                ", versionNo='" + versionNo + '\'' +
                ", versionSize=" + versionSize +
                ", versionInfo='" + versionInfo + '\'' +
                ", versionid=" + versionid +
                ", category=" + category +
                ", dictionary=" + dictionary +
                '}';
    }

    private String interfacelanguage;

    private BigDecimal softwaresize;

    private Date updatedate;

    private Integer devid;

    private String appinfo;

    private Integer status;

    private Date onsaledate;

    private Date offsaledate;

    private Integer flatformid;

    private Integer categorylevel3;

    private Integer downloads;

    private Integer createdby;

    private Date creationdate;

    private Integer modifyby;

    private Date modifydate;

    private Integer categorylevel1;

    private Integer categorylevel2;

    private String logopicpath;

    private String logolocpath;

    private String statusName;
    private String flatformName;
    private String categoryLevel1Name;
    private String categoryLevel2Name;
    private String categoryLevel3Name;
    private String versionNo;
    private BigDecimal versionSize;
    private String versionInfo;

    public BigDecimal getVersionSize() {
        return versionSize;
    }

    public void setVersionSize(BigDecimal versionSize) {
        this.versionSize = versionSize;
    }

    public String getVersionInfo() {
        return versionInfo;
    }

    public void setVersionInfo(String versionInfo) {
        this.versionInfo = versionInfo;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getFlatformName() {
        return flatformName;
    }

    public void setFlatformName(String flatformName) {
        this.flatformName = flatformName;
    }

    public String getCategoryLevel1Name() {
        return categoryLevel1Name;
    }

    public void setCategoryLevel1Name(String categoryLevel1Name) {
        this.categoryLevel1Name = categoryLevel1Name;
    }

    public String getCategoryLevel2Name() {
        return categoryLevel2Name;
    }

    public void setCategoryLevel2Name(String categoryLevel2Name) {
        this.categoryLevel2Name = categoryLevel2Name;
    }

    public String getCategoryLevel3Name() {
        return categoryLevel3Name;
    }

    public void setCategoryLevel3Name(String categoryLevel3Name) {
        this.categoryLevel3Name = categoryLevel3Name;
    }

    public String getVersionNo() {
        return versionNo;
    }

    public void setVersionNo(String versionNo) {
        this.versionNo = versionNo;
    }

    private Integer versionid;
    private app_category category;
    private data_dictionary dictionary;

    public app_category getCategory() {
        return category;
    }

    public void setCategory(app_category category) {
        this.category = category;
    }

    public data_dictionary getDictionary() {
        return dictionary;
    }

    public void setDictionary(data_dictionary dictionary) {
        this.dictionary = dictionary;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSoftwarename() {
        return softwarename;
    }

    public void setSoftwarename(String softwarename) {
        this.softwarename = softwarename == null ? null : softwarename.trim();
    }

    public String getApkname() {
        return apkname;
    }

    public void setApkname(String apkname) {
        this.apkname = apkname == null ? null : apkname.trim();
    }

    public String getSupportrom() {
        return supportrom;
    }

    public void setSupportrom(String supportrom) {
        this.supportrom = supportrom == null ? null : supportrom.trim();
    }

    public String getInterfacelanguage() {
        return interfacelanguage;
    }

    public void setInterfacelanguage(String interfacelanguage) {
        this.interfacelanguage = interfacelanguage == null ? null : interfacelanguage.trim();
    }

    public BigDecimal getSoftwaresize() {
        return softwaresize;
    }

    public void setSoftwaresize(BigDecimal softwaresize) {
        this.softwaresize = softwaresize;
    }

    public Date getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(Date updatedate) {
        this.updatedate = updatedate;
    }

    public Integer getDevid() {
        return devid;
    }

    public void setDevid(Integer devid) {
        this.devid = devid;
    }

    public String getAppinfo() {
        return appinfo;
    }

    public void setAppinfo(String appinfo) {
        this.appinfo = appinfo == null ? null : appinfo.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getOnsaledate() {
        return onsaledate;
    }

    public void setOnsaledate(Date onsaledate) {
        this.onsaledate = onsaledate;
    }

    public Date getOffsaledate() {
        return offsaledate;
    }

    public void setOffsaledate(Date offsaledate) {
        this.offsaledate = offsaledate;
    }

    public Integer getFlatformid() {
        return flatformid;
    }

    public void setFlatformid(Integer flatformid) {
        this.flatformid = flatformid;
    }

    public Integer getCategorylevel3() {
        return categorylevel3;
    }

    public void setCategorylevel3(Integer categorylevel3) {
        this.categorylevel3 = categorylevel3;
    }

    public Integer getDownloads() {
        return downloads;
    }

    public void setDownloads(Integer downloads) {
        this.downloads = downloads;
    }

    public Integer getCreatedby() {
        return createdby;
    }

    public void setCreatedby(Integer createdby) {
        this.createdby = createdby;
    }

    public Date getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(Date creationdate) {
        this.creationdate = creationdate;
    }

    public Integer getModifyby() {
        return modifyby;
    }

    public void setModifyby(Integer modifyby) {
        this.modifyby = modifyby;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public Integer getCategorylevel1() {
        return categorylevel1;
    }

    public void setCategorylevel1(Integer categorylevel1) {
        this.categorylevel1 = categorylevel1;
    }

    public Integer getCategorylevel2() {
        return categorylevel2;
    }

    public void setCategorylevel2(Integer categorylevel2) {
        this.categorylevel2 = categorylevel2;
    }

    public String getLogopicpath() {
        return logopicpath;
    }

    public void setLogopicpath(String logopicpath) {
        this.logopicpath = logopicpath == null ? null : logopicpath.trim();
    }

    public String getLogolocpath() {
        return logolocpath;
    }

    public void setLogolocpath(String logolocpath) {
        this.logolocpath = logolocpath == null ? null : logolocpath.trim();
    }

    public Integer getVersionid() {
        return versionid;
    }

    public void setVersionid(Integer versionid) {
        this.versionid = versionid;
    }
}