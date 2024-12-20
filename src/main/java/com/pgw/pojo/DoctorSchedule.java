package com.pgw.pojo;

import java.util.Date;

public class DoctorSchedule {
    Integer scheduleId;
    Integer doctorId;
    String date;
    String shiftTime;
    Integer departmentId;
    Integer isAvailable;
    Integer visitCount;
    String  remarks;
    Integer week;

    public void quick(DoctorSchedule doctorSchedule){
        this.scheduleId = doctorSchedule.getScheduleId();
        this.shiftTime = doctorSchedule.getShiftTime();
        this.departmentId = doctorSchedule.getDepartmentId();
        this.isAvailable = doctorSchedule.getIsAvailable();
        this.visitCount = doctorSchedule.getVisitCount();
        this.remarks = doctorSchedule.getRemarks();
    }


    public Integer getWeek() {
        return week;
    }

    public void setWeek(Integer week) {
        this.week = week;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getShiftTime() {
        return shiftTime;
    }

    public void setShiftTime(String shiftTime) {
        this.shiftTime = shiftTime;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getIsAvailable() {
        return isAvailable;
    }

    public void setIsAvailable(Integer isAvailable) {
        this.isAvailable = isAvailable;
    }

    public Integer getVisitCount() {
        return visitCount;
    }

    public void setVisitCount(Integer visitCount) {
        this.visitCount = visitCount;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}
