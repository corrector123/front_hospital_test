package com.pgw.service;

import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public interface DoctorScheduleService {
    String getdate(Integer i) throws SQLException;

    DoctorSchedule getschedulebyid_date(Integer doctorId, String date,String shiftTime) throws SQLException;

    Integer getweek(String date) throws SQLException;

    void desccountbyid(Integer sid) throws SQLException;

    void addappoint(Integer doctorId, String appointmentDate, String appointmentTime) throws SQLException;

    DoctorSchedule getschedulebysid(Integer sid) throws SQLException;

    DoctorSchedule getschedulebydid_date(Integer did, String date, String shiftTime) throws SQLException;

    DoctorSchedule desccountbydid(String date, String shiftTime, Integer departmentId) throws SQLException;
}
