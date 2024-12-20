package com.pgw.service;

import com.pgw.pojo.Patients;

import java.sql.SQLException;

public interface PatientsService {
    void addpatient(String phone, String password,String name) throws SQLException;

    boolean querypatientbyphone(String phone) throws SQLException;

    boolean querypatientbyphonepassword(String phone, String password) throws SQLException;

    Patients getpatientbyphone(String phone) throws SQLException;

    void UPDATEPATIENT(String phone,String name,String email, String password,String idcard,Integer patientId) throws SQLException;

    void addmoney(String userphone, String money) throws SQLException;

    void descmoney(String phone, String balance1) throws SQLException;
}
