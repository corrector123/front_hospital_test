package com.pgw.mapper;

import com.pgw.pojo.ProfessionalTitles;
import org.apache.ibatis.annotations.Select;

import java.sql.SQLException;
import java.util.List;

public interface ProfessionalTilesMapper {
    @Select("select *from professional_titles")
    List<ProfessionalTitles> getall() throws SQLException;

    @Select("select *from professional_titles where id = #{professionalTitleId}")
    ProfessionalTitles getprofessionalbyid(Integer professionalTitleId) throws SQLException;
}
