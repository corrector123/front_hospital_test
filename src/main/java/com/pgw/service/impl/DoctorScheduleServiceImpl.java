package com.pgw.service.impl;

import com.pgw.mapper.DoctorScheduleMapper;
import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import com.pgw.service.DoctorScheduleService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class DoctorScheduleServiceImpl implements DoctorScheduleService {

    @Override
    public String getdate(Integer i) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
            return doctorScheduleMapper.getdate(i);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public DoctorSchedule getschedulebyid_date(Integer doctorId, String date,String shiftTime)  {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
            return doctorScheduleMapper.getschedulebyid_date(doctorId,date,shiftTime);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public Integer getweek(String date){
        try {
           SqlSession sqlSession = MybatisUtil.getSqlSession();
           DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
           return doctorScheduleMapper.getweek(date);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public void desccountbyid(Integer sid) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
            doctorScheduleMapper.desccountbyid(sid);
            sqlSession.commit();
        } catch (SQLException e) {
           e.printStackTrace();
           sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }

    @Override
    public void addappoint(Integer doctorId, String appointmentDate, String appointmentTime) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
            doctorScheduleMapper.addappoint(doctorId,appointmentDate,appointmentTime);
            sqlSession.commit();
        } catch (Exception e) {
           e.printStackTrace();
           sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }

    @Override
    public DoctorSchedule getschedulebysid(Integer sid)  {
        try {
           SqlSession sqlSession = MybatisUtil.getSqlSession();
           DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
           return doctorScheduleMapper.getschedulebysid(sid);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public DoctorSchedule getschedulebydid_date(Integer did, String date, String shiftTime) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
            return doctorScheduleMapper.getschedulebydid_date(did,date,shiftTime);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public DoctorSchedule desccountbydid(String date, String shiftTime, Integer departmentId) throws SQLException {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            DoctorScheduleMapper doctorScheduleMapper = sqlSession.getMapper(DoctorScheduleMapper.class);
            DoctorSchedule doctorSchedule = doctorScheduleMapper.getdoctor(date,shiftTime,departmentId);
            doctorScheduleMapper.desccountbyid(doctorSchedule.getScheduleId());
            sqlSession.commit();
            return doctorSchedule;
        } catch (Exception e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
