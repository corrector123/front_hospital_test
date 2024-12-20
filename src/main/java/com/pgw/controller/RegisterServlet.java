package com.pgw.controller;

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




@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

    private PatientsService patientsService = new PatientsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String passwordagain = req.getParameter("passwordagain");
        String name = req.getParameter("name");
        boolean CHECK = false;

       if(!password.equals(passwordagain)) {
            resp.sendRedirect(req.getContextPath() + "/register.jsp?flag=f");
        }
        else{
            try {
                 CHECK = patientsService.querypatientbyphone(phone);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            if(CHECK){
                resp.sendRedirect(req.getContextPath() + "/register.jsp?CHECK=f");
            }
            else{
                try {
                    patientsService.addpatient(phone,password,name);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                resp.sendRedirect(req.getContextPath() + "/login.jsp");
            }
        }

    }
}
