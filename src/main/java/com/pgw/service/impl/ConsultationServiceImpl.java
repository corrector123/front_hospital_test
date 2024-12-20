package com.pgw.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pgw.mapper.ConsultationMapper;
import com.pgw.pojo.Consultation;
import com.pgw.pojo.Departments;
import com.pgw.service.ConsultationService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.List;

public class ConsultationServiceImpl implements ConsultationService {
    @Override
    public Consultation QUERYCONSULTATION(Consultation consultation) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            ConsultationMapper consultationMapper = sqlSession.getMapper(ConsultationMapper.class);
            return consultationMapper.queryconsultation(consultation);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public List<Consultation> QUERYCONSULTATIONLIST(Consultation consultation) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            ConsultationMapper consultationMapper = sqlSession.getMapper(ConsultationMapper.class);
            return consultationMapper.queryconsultationlist(consultation);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public PageInfo queryconsultation(String page, Integer patientId, Integer aid, Integer status) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            ConsultationMapper consultationMapper = sqlSession.getMapper(ConsultationMapper.class);
            if(page!=null&&!"".equals(page)){
                PageHelper.startPage(Integer.valueOf(page),1);
            }else{
                PageHelper.startPage(1,1);
            }
            Consultation consultation = new Consultation();
            consultation.setPatientId(patientId);
            if(aid!=null&&!"".equals(aid)){
                consultation.setAppointmentId(aid);
            }
            if(status!=null&&!"".equals(status)){
                consultation.setIsHospitalized(status);
                System.out.println(status);
                System.out.println(consultation.getIsHospitalized());
            }
            List<Consultation> consultationList = consultationMapper.queryconsultationlist(consultation);
            PageInfo<Consultation> pageInfo = new PageInfo<>(consultationList);
            return pageInfo;

        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
