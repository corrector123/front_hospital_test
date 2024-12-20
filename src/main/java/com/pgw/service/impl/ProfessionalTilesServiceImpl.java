package com.pgw.service.impl;

import com.pgw.mapper.ProfessionalTilesMapper;
import com.pgw.pojo.ProfessionalTitles;
import com.pgw.service.ProfessionalTilesService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class ProfessionalTilesServiceImpl implements ProfessionalTilesService {

    @Override
    public List<ProfessionalTitles> getall()  {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            ProfessionalTilesMapper professionalTilesMapper = sqlSession.getMapper(ProfessionalTilesMapper.class);
            return professionalTilesMapper.getall();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public ProfessionalTitles getprofessionalbyid(Integer professionalTitleId) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            ProfessionalTilesMapper professionalTilesMapper = sqlSession.getMapper(ProfessionalTilesMapper.class);
            return professionalTilesMapper.getprofessionalbyid(professionalTitleId);
        } catch (Exception e) {
          e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
