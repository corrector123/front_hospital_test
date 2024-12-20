package com.pgw.service;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Departments;

import java.sql.SQLException;
import java.util.List;

public interface DepartmentsService {

    PageInfo querydepartment(String page, Integer departf,Integer level, String key);

    Departments QUERYDEPARTMENT(Integer departmentId, String departmentName,Integer departmentPid,Integer departmentLevel,String departmentDescription) throws SQLException;
    List<Departments> QUERYDEPARTMENTLIST(Integer departmentId, String departmentName,Integer departmentPid,Integer departmentLevel,String departmentDescription) throws SQLException;
}
