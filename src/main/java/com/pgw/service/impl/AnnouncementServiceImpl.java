package com.pgw.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pgw.mapper.AnnouncementMapper;
import com.pgw.pojo.Announcements;
import com.pgw.service.AnnouncementService;
import com.pgw.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class AnnouncementServiceImpl implements AnnouncementService {

    @Override
    public boolean deleteById(String id) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            AnnouncementMapper announcementMapper = sqlSession.getMapper(AnnouncementMapper.class);
            announcementMapper.deleteById(id);
            sqlSession.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return false;
    }

    @Override
    public boolean AddAnnounce(Announcements announcements) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            AnnouncementMapper announcementMapper = sqlSession.getMapper(AnnouncementMapper.class);
            announcementMapper.AddAnnounce(announcements);
            sqlSession.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return false;
    }

    @Override
    public Announcements getAnnounceById(String id) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            AnnouncementMapper announcementMapper = sqlSession.getMapper(AnnouncementMapper.class);
            Announcements announcements = announcementMapper.getAnnounceById(id);
            return announcements;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public boolean updateAnnounce(Announcements announcements) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        try {
            AnnouncementMapper announcementMapper = sqlSession.getMapper(AnnouncementMapper.class);
            announcementMapper.UpdateAnnounce(announcements);
            sqlSession.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            sqlSession.rollback();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return false;
    }

    @Override
    public PageInfo getAnnounceListPage(String page, Announcements announcements) {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            AnnouncementMapper announcementMapper = sqlSession.getMapper(AnnouncementMapper.class);
            //使用分页插件进行分页查询
            //最少两个参数，pageNum用户请求的当前页，pageSize每页显示的记录数
            if(page !=null && !"".equals(page)){
                PageHelper.startPage(Integer.valueOf(page),5);
            }else {
                PageHelper.startPage(1,5);//默认返回第一页
            }
            //分页代码后的第一个查询默认自动分页
            List<Announcements> announcementList = announcementMapper.getAnnounceList(announcements);
            PageInfo<Announcements> pageInfo = new PageInfo<>(announcementList);
            System.out.println("pageInfo"+pageInfo);
            return pageInfo;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }

    @Override
    public List<Announcements> getSliderAnnounceList() {
        try {
            SqlSession sqlSession = MybatisUtil.getSqlSession();
            AnnouncementMapper announcementMapper = sqlSession.getMapper(AnnouncementMapper.class);
            List<Announcements> announcementList = announcementMapper.getSliderAnnounceList();
            return announcementList;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtil.closeSqlSession();
        }
        return null;
    }
}
