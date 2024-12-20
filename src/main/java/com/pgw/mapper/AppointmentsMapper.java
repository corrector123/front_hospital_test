package com.pgw.mapper;

import com.pgw.pojo.Appointments;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.sql.SQLException;
import java.util.List;

public interface AppointmentsMapper {
    @Select("select *from appointments where patient_id = #{i} and status!='cancelled' order by appointment_date desc")
    List<Appointments> getappointbypid(int i) throws SQLException;

    @Select("select *from appointments where appointment_id = #{aid}")
    Appointments getappointbyaid(Integer aid) throws SQLException;

    @Update("update appointments set status='cancelled' where appointment_id = #{aid}")
    void cancell(Integer aid) throws SQLException;

    List<Appointments> queryappoint(@Param("doctorname") String doctorname, @Param("departname")String departname, @Param("status")String status,@Param("i") int i);

    @Insert("INSERT into appointments(patient_id,doctor_id,appointment_date,appointment_time,`status`) values(\n" +
            "(select patient_id from patients where phone = #{phone} ),#{doctorId},#{date},#{shiftTime},#{booked})")
    void addappointment(@Param("phone") String phone, @Param("doctorId") Integer doctorId,@Param("date") String date,@Param("shiftTime") String shiftTime, @Param("booked") String booked) throws SQLException;

    @Select("select count(*) from appointments where patient_id = #{patientId} and doctor_id = #{doctorId} and appointment_date = #{date} and appointment_time = #{shiftTime} and status = #{status}")
    Integer QUERYPATIENT(@Param("patientId") Integer patientId,@Param("doctorId") Integer doctorId, @Param("date") String date, @Param("shiftTime") String shiftTime,@Param("status") String status) throws SQLException;

    @Select("select count(*) from appointments where patient_id = #{patientId} and appointment_date = #{date} and appointment_time = #{shiftTime} and status = #{status}")
    Integer QUERY(@Param("patientId")Integer patientId,  @Param("date")String date, @Param("shiftTime")String shiftTime,@Param("status")String status) throws SQLException;
}
