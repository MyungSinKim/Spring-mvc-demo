package com.eastsoft.building.entity;

import javax.persistence.*;

/**
 * Created by eastsoft on 2015/11/18.
 */
@Entity
@Table(name = "tsys_role_resourse", schema = "", catalog = "es_building_ctrl")
public class TsysRoleResourseEntity {
    private long id;
    private String roleCode;
    private String resid;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "role_code", nullable = false, insertable = true, updatable = true, length = 1)
    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    @Basic
    @Column(name = "resid", nullable = false, insertable = true, updatable = true, length = 32)
    public String getResid() {
        return resid;
    }

    public void setResid(String resid) {
        this.resid = resid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TsysRoleResourseEntity that = (TsysRoleResourseEntity) o;

        if (id != that.id) return false;
        if (roleCode != null ? !roleCode.equals(that.roleCode) : that.roleCode != null) return false;
        if (resid != null ? !resid.equals(that.resid) : that.resid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (roleCode != null ? roleCode.hashCode() : 0);
        result = 31 * result + (resid != null ? resid.hashCode() : 0);
        return result;
    }
}
