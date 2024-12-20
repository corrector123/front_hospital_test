package com.pgw.controller.patient;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Consultation;
import com.pgw.pojo.Patients;
import com.pgw.service.ConsultationService;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.ConsultationServiceImpl;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/needlogin/querypersonconsul")
public class QueryPersonConsulServlet extends HttpServlet {
    private PatientsService patientsService = new PatientsServiceImpl();
    private ConsultationService consultationService = new ConsultationServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PageInfo pageInfo = null;
        String page = req.getParameter("pages");
        Integer status = null;
        if(req.getParameter("status")!=null && !"".equals(req.getParameter("status"))){
            status = Integer.valueOf(req.getParameter("status"));
        };
        Integer aid = null;

        Patients patients = null;
        String phone = (String) req.getSession().getAttribute("userphone");


        try {
            patients = patientsService.getpatientbyphone(phone);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Integer patientId = patients.getPatientId();

        if(req.getParameter("aid")!=null && !"".equals(req.getParameter("aid"))) {
             aid = Integer.valueOf(req.getParameter("aid"));
        };
        try {
            pageInfo = consultationService.queryconsultation(page,patientId,aid,status);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        
        req.setAttribute("pageInfo", pageInfo);
        req.setAttribute("status", status);
        req.setAttribute("patients",patients);
        req.getRequestDispatcher("/needlogin/patient-consultation.jsp").forward(req, resp);

    }
}
