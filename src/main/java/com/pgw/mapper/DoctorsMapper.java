package com.pgw.mapper;

import com.pgw.pojo.Departments;
import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.sql.SQLException;
import java.util.List;

public interface DoctorsMapper {

    Doctors querydoctor(@Param("doctorId") Integer doctorId,@Param("jobNumber")String jobNumber,@Param("name") String name,@Param("avator") String avator,@Param("phone") String phone,@Param("email")String email,@Param("introduction") String introduction,@Param("registrationFee") String registrationFee,@Param("entryDate") String entryDate,@Param("departmentId") Integer departmentId,@Param("professionalTitleId") Integer professionalTitleId)throws SQLException;
    List<Doctors> querydoctorlist(@Param("doctorId") Integer doctorId,@Param("jobNumber")String jobNumber,@Param("name") String name,@Param("avator") String avator,@Param("phone") String phone,@Param("email")String email,@Param("introduction") String introduction,@Param("registrationFee") String registrationFee,@Param("entryDate") String entryDate,@Param("departmentId") Integer departmentId,@Param("professionalTitleId") Integer professionalTitleId)throws SQLException;
}
