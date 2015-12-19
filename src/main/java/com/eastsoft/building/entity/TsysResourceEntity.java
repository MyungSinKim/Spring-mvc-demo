package com.eastsoft.building.entity;

import javax.persistence.*;

/**
 * Created by eastsoft on 2015/11/18.
 */
@Entity
@Table(name = "tsys_resource", schema = "", catalog = "es_building_ctrl")
public class TsysResourceEntity {
    private long id;
    private String resid;
    private String resname;
    private String path;
    private String flag;
    private String remark;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "resid", nullable = false, insertable = true, updatable = true, length = 32)
    public String getResid() {
        return resid;
    }

    public void setResid(String resid) {
        this.resid = resid;
    }

    @Basic
    @Column(name = "resname", nullable = false, insertable = true, updatable = true, length = 128)
    public String getResname() {
        return resname;
    }

    public void setResname(String resname) {
        this.resname = resname;
    }

    @Basic
    @Column(name = "path", nullable = false, insertable = true, updatable = true, length = 512)
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Basic
    @Column(name = "flag", nullable = false, insertable = true, updatable = true, length = 2)
    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    @Basic
    @Column(name = "remark", nullable = true, insertable = true, updatable = true, length = 512)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TsysResourceEntity that = (TsysResourceEntity) o;

        if (id != that.id) return false;
        if (resid != null ? !resid.equals(that.resid) : that.resid != null) return false;
        if (resname != null ? !resname.equals(that.resname) : that.resname != null) return false;
        if (path != null ? !path.equals(that.path) : that.path != null) return false;
        if (flag != null ? !flag.equals(that.flag) : that.flag != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (resid != null ? resid.hashCode() : 0);
        result = 31 * result + (resname != null ? resname.hashCode() : 0);
        result = 31 * result + (path != null ? path.hashCode() : 0);
        result = 31 * result + (flag != null ? flag.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
