package com.pgw.service.impl;

import com.pgw.mapper.PatientsMapper;
import com.pgw.pojo.Patients;
import com.pgw.service.PatientsService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;

public class PatientsServiceImpl implements PatientsService {

    @Override
    public void addpatient(String phone, String password,String name){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            patientsMapper.addpatient(phone,password,name);
            sqlSession.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }

    @Override
    public boolean querypatientbyphone(String phone)  {
        Patients patients = null;
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            patients = patientsMapper.querypatientbyphone(phone);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        if(patients!=null){
            return true;
        }else {
        return false;
        }
    }

    @Override
    public boolean querypatientbyphonepassword(String phone, String password){
        Patients patients = null;
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            patients = patientsMapper.querypatientbyphonepassword(phone,password);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        if(patients!=null){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Patients getpatientbyphone(String phone)  {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            return patientsMapper.querypatientbyphone(phone);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public void UPDATEPATIENT(String phone,String name,String email, String password,String idcard,Integer patientId) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            patientsMapper.UPDATEPATIENT(phone,name,email,password,idcard,patientId);
            sqlSession.commit();
        } catch (Exception e) {
           e.printStackTrace();
           sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }

    @Override
    public void addmoney(String userphone, String money)  {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            patientsMapper.addmoney(userphone,money);
            sqlSession.commit();
        } catch (Exception e) {
           e.printStackTrace();
           sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }

    }

    @Override
    public void descmoney(String phone, String balance1) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            PatientsMapper patientsMapper = sqlSession.getMapper(PatientsMapper.class);
            patientsMapper.desc(phone,balance1);
            sqlSession.commit();
        } catch (Exception e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
    }


}
