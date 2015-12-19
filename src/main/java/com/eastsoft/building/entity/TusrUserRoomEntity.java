package com.eastsoft.building.entity;

import javax.persistence.*;

/**
 * Created by eastsoft on 2015/11/18.
 */
@Entity
@Table(name = "tusr_user_room", schema = "", catalog = "es_building_ctrl")
public class TusrUserRoomEntity {
    private long id;
    private String userId;
    private String roomCode;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_id", nullable = false, insertable = true, updatable = true, length = 32)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "room_code", nullable = false, insertable = true, updatable = true, length = 32)
    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TusrUserRoomEntity that = (TusrUserRoomEntity) o;

        if (id != that.id) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (roomCode != null ? !roomCode.equals(that.roomCode) : that.roomCode != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (roomCode != null ? roomCode.hashCode() : 0);
        return result;
    }
}
