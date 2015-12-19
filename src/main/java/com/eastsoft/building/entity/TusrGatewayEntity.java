package com.eastsoft.building.entity;

import javax.persistence.*;

/**
 * Created by eastsoft on 2015/11/18.
 */
@Entity
@Table(name = "tusr_gateway", schema = "", catalog = "es_building_ctrl")
public class TusrGatewayEntity {
    private long id;
    private String gid;
    private String gatewayName;
    private String loginName;
    private String loginPass;
    private String deptCode;
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
    @Column(name = "gid", nullable = false, insertable = true, updatable = true, length = 32)
    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    @Basic
    @Column(name = "gateway_name", nullable = false, insertable = true, updatable = true, length = 128)
    public String getGatewayName() {
        return gatewayName;
    }

    public void setGatewayName(String gatewayName) {
        this.gatewayName = gatewayName;
    }

    @Basic
    @Column(name = "login_name", nullable = false, insertable = true, updatable = true, length = 32)
    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    @Basic
    @Column(name = "login_pass", nullable = false, insertable = true, updatable = true, length = 32)
    public String getLoginPass() {
        return loginPass;
    }

    public void setLoginPass(String loginPass) {
        this.loginPass = loginPass;
    }

    @Basic
    @Column(name = "dept_code", nullable = false, insertable = true, updatable = true, length = 32)
    public String getDeptCode() {
        return deptCode;
    }

    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
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

        TusrGatewayEntity that = (TusrGatewayEntity) o;

        if (id != that.id) return false;
        if (gid != null ? !gid.equals(that.gid) : that.gid != null) return false;
        if (gatewayName != null ? !gatewayName.equals(that.gatewayName) : that.gatewayName != null) return false;
        if (loginName != null ? !loginName.equals(that.loginName) : that.loginName != null) return false;
        if (loginPass != null ? !loginPass.equals(that.loginPass) : that.loginPass != null) return false;
        if (deptCode != null ? !deptCode.equals(that.deptCode) : that.deptCode != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (gid != null ? gid.hashCode() : 0);
        result = 31 * result + (gatewayName != null ? gatewayName.hashCode() : 0);
        result = 31 * result + (loginName != null ? loginName.hashCode() : 0);
        result = 31 * result + (loginPass != null ? loginPass.hashCode() : 0);
        result = 31 * result + (deptCode != null ? deptCode.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
