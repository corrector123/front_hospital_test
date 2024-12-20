package com.pgw;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pay")
public class PayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer money = Integer.valueOf(req.getParameter("money"));
        req.getSession().removeAttribute("money");
        req.getSession().setAttribute("money",money.toString());
        req.setAttribute("money", money);
        req.getRequestDispatcher("/pay.jsp").forward(req, resp);
    }
}
