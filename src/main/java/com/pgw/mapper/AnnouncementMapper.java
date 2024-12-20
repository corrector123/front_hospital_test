package com.pgw.mapper;

import com.pgw.pojo.Announcements;
import org.apache.ibatis.annotations.*;

import java.sql.SQLException;
import java.util.List;

public interface AnnouncementMapper {

    @Delete("delete from announcement where announcement_id=#{id}")
    void deleteById(@Param("id") String id) throws SQLException;

    @Insert("insert into announcement(title,content,creation_time,creator,type,avatar) values(#{title},#{content},#{creationTime},#{creator},#{type},#{avatar})")
    void AddAnnounce(Announcements announcements) throws SQLException;

    @Select("select * from announcement where announcement_id=#{id}")
    Announcements getAnnounceById(String id) throws SQLException;

    @Select("SELECT * FROM announcement WHERE type='slider'")
    List<Announcements> getSliderAnnounceList();

    @Update("update announcement set title=#{title}, content=#{content}, creation_time=#{creationTime}, creator=#{creator}, type=#{type}, avatar=#{avatar} where announcement_id=#{announcementId}")
    void UpdateAnnounce(Announcements announcements) throws SQLException;

    List<Announcements> getAnnounceList(Announcements announcements);
}
