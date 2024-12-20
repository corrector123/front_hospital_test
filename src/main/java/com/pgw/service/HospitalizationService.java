package com.pgw.service;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Hospitalization;

import java.sql.SQLException;
import java.util.List;

public interface HospitalizationService {
    Hospitalization QUERYHOSPITALIZATION(Hospitalization hospitalization);
    List<Hospitalization> QUERYHOSPITALIZATIONSLIST(Hospitalization hospitalization);
    PageInfo queryhospitalization(String page, Hospitalization hospitalization) throws SQLException;
}
