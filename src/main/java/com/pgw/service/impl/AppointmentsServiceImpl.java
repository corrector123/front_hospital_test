package com.pgw.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pgw.mapper.AppointmentsMapper;
import com.pgw.pojo.Appointments;
import com.pgw.pojo.Doctors;
import com.pgw.service.AppointmentsService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class AppointmentsServiceImpl implements AppointmentsService {


    @Override
    public Appointments getappointbyaid(Integer aid)  {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            AppointmentsMapper appointmentsMapper = sqlSession.getMapper(AppointmentsMapper.class);
            return appointmentsMapper.getappointbyaid(aid);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public void cancell(Integer aid)  {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            AppointmentsMapper appointmentsMapper = sqlSession.getMapper(AppointmentsMapper.class);
            appointmentsMapper.cancell(aid);
            sqlSession.commit();
        } catch (Exception e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }

    @Override
    public PageInfo queryappoint(String page, String doctorname, String departname, String status, int i)  {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            AppointmentsMapper appointmentsMapper = sqlSession.getMapper(AppointmentsMapper.class);

            if(page!=null&&!"".equals(page)){
                PageHelper.startPage(Integer.valueOf(page),2);
            }else{
                PageHelper.startPage(1,2);
            }
            List<Appointments> appointmentsList = appointmentsMapper.queryappoint(doctorname,departname,status,i);
            PageInfo<Appointments> pageInfo = new PageInfo<>(appointmentsList);

            return pageInfo;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public void addappointment(String phone, Integer doctorId, String date, String shiftTime, String booked) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            AppointmentsMapper appointmentsMapper = sqlSession.getMapper(AppointmentsMapper.class);
            appointmentsMapper.addappointment(phone,doctorId,date,shiftTime,booked);
            sqlSession.commit();
        } catch (Exception e) {
           e.printStackTrace();
           sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }

    @Override
    public Integer QUERYPATIENT(Integer patientId,Integer doctorId, String date, String shiftTime,String status) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            AppointmentsMapper appointmentsMapper = sqlSession.getMapper(AppointmentsMapper.class);
            return appointmentsMapper.QUERYPATIENT(patientId,doctorId, date,shiftTime,status);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public Integer QUERY(Integer patientId, String date, String shiftTime,String status){
        try {
           SqlSession sqlSession = MybatisUtil.getSqlSession();
           AppointmentsMapper appointmentsMapper = sqlSession.getMapper(AppointmentsMapper.class);
           return appointmentsMapper.QUERY(patientId,date,shiftTime,status);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return 0;
    }
}
