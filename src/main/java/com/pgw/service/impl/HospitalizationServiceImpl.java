package com.pgw.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pgw.mapper.HospitalizationMapper;
import com.pgw.pojo.Appointments;
import com.pgw.pojo.Hospitalization;
import com.pgw.service.HospitalizationService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class HospitalizationServiceImpl implements HospitalizationService {
    @Override
    public Hospitalization QUERYHOSPITALIZATION(Hospitalization hospitalization) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            HospitalizationMapper hospitalizationMapper = sqlSession.getMapper(HospitalizationMapper.class);
            return hospitalizationMapper.queryhospitalization(hospitalization);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public List<Hospitalization> QUERYHOSPITALIZATIONSLIST(Hospitalization hospitalization) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            HospitalizationMapper hospitalizationMapper = sqlSession.getMapper(HospitalizationMapper.class);
            return hospitalizationMapper.queryhospitalizationlist(hospitalization);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public PageInfo queryhospitalization(String page, Hospitalization hospitalization)  {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            HospitalizationMapper hospitalizationMapper = sqlSession.getMapper(HospitalizationMapper.class);
            if(page!=null&&!"".equals(page)){
                PageHelper.startPage(Integer.valueOf(page),2);
            }else{
                PageHelper.startPage(1,2);
            }
            List<Hospitalization> hospitalizationList = hospitalizationMapper.queryhospitalizationlist(hospitalization);
            PageInfo<Hospitalization> pageInfo = new PageInfo<>(hospitalizationList);
            return pageInfo;
        } catch (Exception e) {
          e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
