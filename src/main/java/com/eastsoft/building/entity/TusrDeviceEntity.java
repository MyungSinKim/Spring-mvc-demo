package com.eastsoft.building.entity;

import javax.persistence.*;

/**
 * Created by eastsoft on 2015/11/18.
 */
@Entity
@Table(name = "tusr_device", schema = "", catalog = "es_building_ctrl")
public class TusrDeviceEntity {
    private long id;
    private String aid;
    private String sid;
    private String gid;
    private String deviceName;
    private String deviceTypeCode;
    private String roomCode;
    private String state;
    private String param;
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
    @Column(name = "aid", nullable = false, insertable = true, updatable = true, length = 32)
    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    @Basic
    @Column(name = "sid", nullable = false, insertable = true, updatable = true, length = 32)
    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
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
    @Column(name = "device_name", nullable = false, insertable = true, updatable = true, length = 64)
    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    @Basic
    @Column(name = "device_type_code", nullable = false, insertable = true, updatable = true, length = 32)
    public String getDeviceTypeCode() {
        return deviceTypeCode;
    }

    public void setDeviceTypeCode(String deviceTypeCode) {
        this.deviceTypeCode = deviceTypeCode;
    }

    @Basic
    @Column(name = "room_code", nullable = false, insertable = true, updatable = true, length = 32)
    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    @Basic
    @Column(name = "state", nullable = true, insertable = true, updatable = true, length = 255)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "param", nullable = true, insertable = true, updatable = true, length = 512)
    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    @Basic
    @Column(name = "remark", nullable = true, insertable = true, updatable = true, length = 255)
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

        TusrDeviceEntity that = (TusrDeviceEntity) o;

        if (id != that.id) return false;
        if (aid != null ? !aid.equals(that.aid) : that.aid != null) return false;
        if (sid != null ? !sid.equals(that.sid) : that.sid != null) return false;
        if (gid != null ? !gid.equals(that.gid) : that.gid != null) return false;
        if (deviceName != null ? !deviceName.equals(that.deviceName) : that.deviceName != null) return false;
        if (deviceTypeCode != null ? !deviceTypeCode.equals(that.deviceTypeCode) : that.deviceTypeCode != null)
            return false;
        if (roomCode != null ? !roomCode.equals(that.roomCode) : that.roomCode != null) return false;
        if (state != null ? !state.equals(that.state) : that.state != null) return false;
        if (param != null ? !param.equals(that.param) : that.param != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (aid != null ? aid.hashCode() : 0);
        result = 31 * result + (sid != null ? sid.hashCode() : 0);
        result = 31 * result + (gid != null ? gid.hashCode() : 0);
        result = 31 * result + (deviceName != null ? deviceName.hashCode() : 0);
        result = 31 * result + (deviceTypeCode != null ? deviceTypeCode.hashCode() : 0);
        result = 31 * result + (roomCode != null ? roomCode.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        result = 31 * result + (param != null ? param.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
