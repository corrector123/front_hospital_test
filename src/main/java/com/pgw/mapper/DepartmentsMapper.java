package com.pgw.mapper;

import com.pgw.pojo.Departments;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.sql.SQLException;
import java.util.List;

public interface DepartmentsMapper {
    Departments querydepartment(@Param("departmentId") Integer departmentId,@Param("departmentName")String departmentName,@Param("departmentPid")Integer departmentPid,@Param("departmentLevel")Integer departmentLevel,@Param("departmentDescription")String departmentDescription)throws SQLException;
    List<Departments> querydepartmentlist(@Param("departmentId") Integer departmentId,@Param("departmentName")String departmentName,@Param("departmentPid")Integer departmentPid,@Param("departmentLevel")Integer departmentLevel,@Param("departmentDescription")String departmentDescription)throws SQLException;
}
