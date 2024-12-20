package com.pgw;

import com.pgw.service.PatientsService;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/paysumbit")
public class PaySumbitServlet extends HttpServlet {
    private PatientsService patientsService = new PatientsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String money = (String) req.getSession().getAttribute("money");
        String userphone = (String) req.getSession().getAttribute("userphone");
        try {
            patientsService.addmoney(userphone,money);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect(req.getContextPath()+"/needlogin/queryperson");
    }
}
