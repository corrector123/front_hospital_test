package com.pgw.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.Cookie;

@WebServlet("/cancellcook")
public class CancellCookieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cookie[] cookies = req.getCookies();
        for(Cookie cookie : cookies) {
            if(cookie.getName().equals("userphone")) {
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }
        }

        Cookie cookie = new Cookie("userphone", null);
        cookie.setMaxAge(24*60*60);
        resp.addCookie(cookie);

        req.getSession().removeAttribute("userphone");
        resp.sendRedirect(req.getContextPath() + "/index.jsp");
    }
}
