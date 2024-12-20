package com.pgw.mapper;

import com.pgw.pojo.Hospitalization;

import java.sql.SQLException;
import java.util.List;

public interface HospitalizationMapper {
    Hospitalization queryhospitalization(Hospitalization hospitalization) throws SQLException;

    List<Hospitalization> queryhospitalizationlist(Hospitalization hospitalization) throws SQLException;
}
