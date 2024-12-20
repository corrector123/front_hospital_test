package com.pgw.controller;

import com.pgw.service.PatientsService;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private PatientsService patientsService = new PatientsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        boolean flag = false;
        try {
             flag =  patientsService.querypatientbyphonepassword(phone,password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        if (flag) {
          req.setAttribute("phone", phone);
          req.getRequestDispatcher("/addcookie").forward(req, resp);
        }
        else {
            resp.sendRedirect(req.getContextPath()+"/login.jsp?flag=f");
        }

    }
}
