package com.pgw.controller.patient;

import com.pgw.pojo.Patients;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/needlogin/changedetail")
public class ChangeDetailServlet extends HttpServlet {
    private PatientsService patientsService = new PatientsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone = (String) req.getSession().getAttribute("userphone");
        Patients patients = null;
        try {
            patients = patientsService.getpatientbyphone(phone);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("patients", patients);
        req.getRequestDispatcher("/needlogin/change-detail.jsp").forward(req,resp);

    }
}
