package com.pgw.mapper;

import com.pgw.pojo.DoctorSchedule;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public interface DoctorScheduleMapper {
    @Select("select Date_add(curdate(),interval #{i} day)")
    String getdate(Integer i) throws SQLException;

    @Select("select schedule_id,shift_time,department_id,is_available,visit_count,remarks from doctor_schedule where doctor_id=#{doctorId} and date = #{date} and shift_time = #{shiftTime}")
    DoctorSchedule getschedulebyid_date(@Param("doctorId") Integer doctorId, @Param("date") String date,@Param("shiftTime") String shiftTime) throws SQLException;

    @Select("select WEEKDAY(curdate())")
    Integer getweek(String date) throws SQLException;

    @Update("update doctor_schedule set visit_count=visit_count-1 where schedule_id = #{sid}")
    void desccountbyid(Integer sid) throws SQLException;

    @Update("update doctor_schedule set visit_count=visit_count+1 where doctor_id=#{doctorId} and date = #{appointmentDate} and shift_time = #{appointmentTime}")
    void addappoint(@Param("doctorId") Integer doctorId, @Param("appointmentDate")String appointmentDate, @Param("appointmentTime") String appointmentTime) throws SQLException;

    @Select("select *from doctor_schedule where schedule_id = #{sid}")
    DoctorSchedule getschedulebysid(Integer sid) throws SQLException;
    @Select("select shift_time,department_id,SUM(visit_count) as visit_count from doctor_schedule where department_id=#{did} and date = #{date} and shift_time = #{shiftTime} group by department_id")
    DoctorSchedule getschedulebydid_date(@Param("did") Integer did, @Param("date") String date, @Param("shiftTime") String shiftTime) throws SQLException;

    @Select("select *from doctor_schedule where date = #{date} and shift_time = #{shiftTime} and department_id = #{departmentId} limit 1")
    DoctorSchedule getdoctor(@Param("date") String date, @Param("shiftTime") String shiftTime, @Param("departmentId") Integer departmentId) throws SQLException;
}
