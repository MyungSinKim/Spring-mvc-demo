package com.eastsoft.building.entity;

import javax.persistence.*;

/**
 * Created by eastsoft on 2015/11/18.
 */
@Entity
@Table(name = "tusr_room", schema = "", catalog = "es_building_ctrl")
public class TusrRoomEntity {
    private long id;
    private String roomCode;
    private String roomName;
    private String deptCode;
    private String roomType;
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
    @Column(name = "room_code", nullable = false, insertable = true, updatable = true, length = 32)
    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    @Basic
    @Column(name = "room_name", nullable = false, insertable = true, updatable = true, length = 32)
    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
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
    @Column(name = "room_type", nullable = false, insertable = true, updatable = true, length = 2)
    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
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

        TusrRoomEntity that = (TusrRoomEntity) o;

        if (id != that.id) return false;
        if (roomCode != null ? !roomCode.equals(that.roomCode) : that.roomCode != null) return false;
        if (roomName != null ? !roomName.equals(that.roomName) : that.roomName != null) return false;
        if (deptCode != null ? !deptCode.equals(that.deptCode) : that.deptCode != null) return false;
        if (roomType != null ? !roomType.equals(that.roomType) : that.roomType != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (roomCode != null ? roomCode.hashCode() : 0);
        result = 31 * result + (roomName != null ? roomName.hashCode() : 0);
        result = 31 * result + (deptCode != null ? deptCode.hashCode() : 0);
        result = 31 * result + (roomType != null ? roomType.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        return result;
    }
}
