package com.pgw.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pgw.mapper.DepartmentsMapper;
import com.pgw.mapper.DoctorsMapper;
import com.pgw.pojo.Departments;
import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import com.pgw.service.DoctorsService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class DoctorsServiceImpl implements DoctorsService {

    @Override
    public PageInfo querydoctor(String page, String name,Integer departmentId,Integer professionalTitleId) throws SQLException {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DoctorsMapper doctorsMapper = sqlSession.getMapper(DoctorsMapper.class);

            if(page!=null&&!"".equals(page)){
                PageHelper.startPage(Integer.valueOf(page),10);
            }else{
                PageHelper.startPage(1,10);
            }
            List<Doctors>doctorsList  =doctorsMapper.querydoctorlist(null,null,name,null,null,null,null,null,null,departmentId,professionalTitleId);

            PageInfo<Doctors> pageInfo = new PageInfo<>(doctorsList);
            return pageInfo;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public Doctors QUERYDOCTOR(Integer doctorId, String jobNumber, String name, String avator, String phone, String email, String introduction, String registrationFee, String entryDate, Integer department_id, Integer professional_title_id) throws SQLException {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DoctorsMapper doctorsMapper = sqlSession.getMapper(DoctorsMapper.class);
            return doctorsMapper.querydoctor(doctorId,jobNumber,name,avator,phone,email,introduction,registrationFee,entryDate,department_id,professional_title_id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public List<Doctors> QUERYDOCTORLIST(Integer doctorId, String jobNumber, String name, String avator, String phone, String email, String introduction, String registrationFee, String entryDate, Integer department_id, Integer professional_title_id) throws SQLException {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DoctorsMapper doctorsMapper = sqlSession.getMapper(DoctorsMapper.class);
            return doctorsMapper.querydoctorlist(doctorId,jobNumber,name,avator,phone,email,introduction,registrationFee,entryDate,department_id,professional_title_id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
