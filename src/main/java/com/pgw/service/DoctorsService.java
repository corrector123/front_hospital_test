package com.pgw.service;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import org.apache.ibatis.annotations.Param;

import java.sql.SQLException;
import java.util.List;

public interface DoctorsService {


    PageInfo querydoctor(String page, String name,Integer departmentId,Integer professionalTitleId) throws SQLException;

    Doctors QUERYDOCTOR( Integer doctorId, String jobNumber,String name,  String avator,  String phone, String email,  String introduction,  String registrationFee,  String entryDate,  Integer department_id,  Integer professional_title_id)throws SQLException;
    List<Doctors> QUERYDOCTORLIST( Integer doctorId, String jobNumber,String name,  String avator,  String phone, String email,  String introduction,  String registrationFee,  String entryDate,  Integer department_id,  Integer professional_title_id)throws SQLException;
}
