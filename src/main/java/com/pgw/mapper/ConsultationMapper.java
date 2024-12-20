package com.pgw.mapper;

import com.pgw.pojo.Consultation;

import java.sql.SQLException;
import java.util.List;

public interface ConsultationMapper {
    Consultation queryconsultation(Consultation consultation) throws SQLException;

    List<Consultation> queryconsultationlist(Consultation consultation) throws SQLException;
}
