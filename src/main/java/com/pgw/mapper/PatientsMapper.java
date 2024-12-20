package com.pgw.mapper;

import com.pgw.pojo.Patients;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.sql.SQLException;

public interface PatientsMapper {
    @Insert("insert into patients(phone,password,name) values(#{phone},#{password},#{name})")
    void addpatient(@Param("phone") String phone, @Param("password") String password,@Param("name") String name) throws SQLException;

    @Select("select *from patients where phone = #{phone}")
    Patients querypatientbyphone(String phone) throws SQLException;

    @Select("select *from patients where phone = #{phone} and password = #{password}")
    Patients querypatientbyphonepassword(@Param("phone") String phone,@Param("password") String password) throws SQLException;

    @Update("update patients set phone = #{phone},name = #{name},email = #{email},password = #{password},id_card_number = #{idcard} where patient_id = #{patientId}")
    void UPDATEPATIENT(@Param("phone") String phone,@Param("name") String name,@Param("email") String email,@Param("password") String password,@Param("idcard") String idcard,@Param("patientId") Integer patientId) throws SQLException;

    @Update("update patients set balance = balance + #{money} where phone = #{userphone}")
    void addmoney(@Param("userphone") String userphone,@Param("money") String money) throws SQLException;

    @Update("update patients set balance = balance - #{balance1} where phone = #{phone}")
    void desc(@Param("phone") String phone,@Param("balance1") String balance1) throws SQLException;
}
