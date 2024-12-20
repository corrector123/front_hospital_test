package com.pgw.controller.patient;

import com.pgw.pojo.Patients;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Objects;

@WebServlet("/needlogin/updatedetail")
public class UpdateDetailServlet extends HttpServlet {
    private PatientsService patientsService = new PatientsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pname = req.getParameter("pname");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String idcard = req.getParameter("idcard");
        Integer patientId = Integer.valueOf(req.getParameter("patientId"));

        try {
            patientsService.UPDATEPATIENT(phone,pname,email,password,idcard,patientId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        if(!Objects.equals(phone, (String) req.getSession().getAttribute("userphone"))) {
           resp.sendRedirect(req.getContextPath()+"/cancellcook");
        }
        else{
           resp.sendRedirect(req.getContextPath()+"/needlogin/queryperson");
        }
    }
}
