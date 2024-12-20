package com.pgw.service;

import com.pgw.pojo.ProfessionalTitles;

import java.sql.SQLException;
import java.util.List;

public interface ProfessionalTilesService {

    List<ProfessionalTitles> getall() throws SQLException;

    ProfessionalTitles getprofessionalbyid(Integer professionalTitleId) throws SQLException;
}
