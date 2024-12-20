package com.pgw.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.Cookie;

@WebServlet("/addcookie")
public class AddCookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone = req.getParameter("phone");

        Cookie cookie = new Cookie("userphone", phone);
        cookie.setMaxAge(24*60*60);
        resp.addCookie(cookie);

        req.getSession().setAttribute("userphone",phone);
        resp.sendRedirect(req.getContextPath() + "/index.jsp");
    }
}
