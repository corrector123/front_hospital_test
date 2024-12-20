package com.pgw.service;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Consultation;

import java.sql.SQLException;
import java.util.List;

public interface ConsultationService {
    Consultation QUERYCONSULTATION(Consultation consultation);
    List<Consultation> QUERYCONSULTATIONLIST(Consultation consultation);

    PageInfo queryconsultation(String page, Integer patientId, Integer aid, Integer status) throws SQLException;
}
