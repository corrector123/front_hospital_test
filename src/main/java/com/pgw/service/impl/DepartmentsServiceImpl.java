package com.pgw.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pgw.mapper.DepartmentsMapper;
import com.pgw.pojo.Departments;
import com.pgw.service.DepartmentsService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class DepartmentsServiceImpl implements DepartmentsService {
    @Override
    public PageInfo querydepartment(String page, Integer departf,Integer level, String key) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DepartmentsMapper departmentsMapper = sqlSession.getMapper(DepartmentsMapper.class);

            if(page!=null&&!"".equals(page)){
                PageHelper.startPage(Integer.valueOf(page),9);
            }else{
                PageHelper.startPage(1,9);
            }
            List<Departments> departfirstlist = departmentsMapper.querydepartmentlist(null,null,departf,level,key);

            for(Departments department:departfirstlist){
                List<Departments> departments = departmentsMapper.querydepartmentlist(null,null,department.getDepartmentId(),null,null);
                if(departments.isEmpty()){
                    department.setHaschild(false);
                }
                else {
                    department.setHaschild(true);
                }
            }
            PageInfo<Departments> pageInfo = new PageInfo<>(departfirstlist);
            return pageInfo;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public Departments QUERYDEPARTMENT(Integer departmentId, String departmentName, Integer departmentPid, Integer departmentLevel, String departmentDescription) throws SQLException {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DepartmentsMapper departmentsMapper = sqlSession.getMapper(DepartmentsMapper.class);
            return departmentsMapper.querydepartment(departmentId,departmentName,departmentPid,departmentLevel,departmentDescription);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public List<Departments> QUERYDEPARTMENTLIST(Integer departmentId, String departmentName, Integer departmentPid, Integer departmentLevel, String departmentDescription) throws SQLException {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DepartmentsMapper departmentsMapper = sqlSession.getMapper(DepartmentsMapper.class);
            return departmentsMapper.querydepartmentlist(departmentId,departmentName,departmentPid,departmentLevel,departmentDescription);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
