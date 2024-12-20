package com.pgw.service;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Appointments;

import java.sql.SQLException;
import java.util.List;

public interface AppointmentsService {

    Appointments getappointbyaid(Integer aid) throws SQLException;

    void cancell(Integer aid) throws SQLException;

    PageInfo queryappoint(String page, String doctorname, String departname, String status, int i) throws SQLException;

    void addappointment(String phone, Integer doctorId, String date, String shiftTime, String booked) throws SQLException;

    Integer QUERYPATIENT(Integer patientId,Integer doctorId, String date, String shiftTime,String status) throws SQLException;

    Integer QUERY(Integer patientId, String date, String shiftTime,String status) throws SQLException;
}
