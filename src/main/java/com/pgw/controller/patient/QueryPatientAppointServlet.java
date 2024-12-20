package com.pgw.controller.patient;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.*;
import com.pgw.service.*;
import com.pgw.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/needlogin/querypersonappoint")
public class QueryPatientAppointServlet extends HttpServlet {
    private AppointmentsService appointmentsService = new AppointmentsServiceImpl();
    private DoctorsService doctorsService = new DoctorsServiceImpl();
    private DepartmentsService departmentsService = new DepartmentsServiceImpl();
    private ProfessionalTilesService professionalTilesService = new ProfessionalTilesServiceImpl();
    private PatientsService patientsService = new PatientsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String page = req.getParameter("pages");
        String doctorname = req.getParameter("doctorname");
        String departname = req.getParameter("departname");
        String status = req.getParameter("status");
        String phone = (String) req.getSession().getAttribute("userphone");
//        Cookie[] cookies = req.getCookies();
//        for (Cookie cookie : cookies) {
//            if (cookie.getName().equals("userphone")) {
//                phone = cookie.getValue();
//            }
//        }
        Patients patients = null;
        try {
            patients = patientsService.getpatientbyphone(phone);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Integer patientId = patients.getPatientId();

        if(status==null& !"".equals(status)){
            status = "booked";
        }

        List<Departments> departmentsList = null;
        PageInfo pageInfo = null;
        try {
            pageInfo = appointmentsService.queryappoint(page,doctorname,departname,status,patientId);
            departmentsList = departmentsService.QUERYDEPARTMENTLIST(null,null,null,2,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("pageInfo", pageInfo);
        req.setAttribute("doctorname", doctorname);
        req.setAttribute("departname", departname);
        req.setAttribute("status", status);
        req.setAttribute("departmentsList", departmentsList);
        req.setAttribute("patients",patients);
        req.getRequestDispatcher("/needlogin/patient-appoint.jsp").forward(req, resp);
    }
}
