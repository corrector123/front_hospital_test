package com.pgw.controller.patient;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Hospitalization;
import com.pgw.pojo.Patients;
import com.pgw.service.HospitalizationService;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.HospitalizationServiceImpl;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/needlogin/querypersonhospitalization")
public class QueryPatientHospitalizationServlet extends HttpServlet {
    private PatientsService patientsService = new PatientsServiceImpl();
    private HospitalizationService hospitalizationService = new HospitalizationServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Hospitalization hospitalization = new Hospitalization();
        String pstatus = req.getParameter("pstatus");
        String hstatus = req.getParameter("hstatus");
        Integer cid = null;
        if(req.getParameter("cid") != null && !req.getParameter("cid").equals("")) {
            cid = Integer.valueOf(req.getParameter("cid"));
            hospitalization.setConsultationId(cid);
        };
        if(pstatus != null && !pstatus.equals("")) {
            hospitalization.setPaymentStatus(pstatus);
        }
        if(hstatus != null && !hstatus.equals("")) {
            hospitalization.setHospitalizationStatus(hstatus);
        }


        Patients patients = null;
        String phone = (String) req.getSession().getAttribute("userphone");


        try {
            patients = patientsService.getpatientbyphone(phone);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Integer patientId = patients.getPatientId();

        hospitalization.setPatientId(patientId);
        String page = req.getParameter("pages");
        PageInfo pageInfo = null;
        try {
            pageInfo = hospitalizationService.queryhospitalization(page,hospitalization);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("pageInfo", pageInfo);
        req.setAttribute("pstatus",pstatus);
        req.setAttribute("hstatus",hstatus);
        req.setAttribute("patients",patients);
        req.getRequestDispatcher("/needlogin/patient-hospitalization.jsp").forward(req, resp);
    }
}
