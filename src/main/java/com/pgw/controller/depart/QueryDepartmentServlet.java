package com.pgw.controller.depart;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Departments;
import com.pgw.service.DepartmentsService;
import com.pgw.service.impl.DepartmentsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/QueryDepartment")
public class QueryDepartmentServlet extends HttpServlet {

    private DepartmentsService departmentsService = new DepartmentsServiceImpl();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String page = req.getParameter("pages");
        Integer departf = null;
        Integer level = 1;
        String departf1 = req.getParameter("departf");
        if (departf1 != null && !"".equals(departf1)) {
             departf = Integer.valueOf(departf1);
             level = 2;
        }
        String Key = req.getParameter("Key");
        PageInfo pageInfo = null;
        List<Departments> departlist = null;
        try {
            departlist = departmentsService.QUERYDEPARTMENTLIST(null,null,null,1,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        pageInfo = departmentsService.querydepartment(page,departf,level,Key);

        req.setAttribute("pageInfo", pageInfo);
        req.setAttribute("departf",departf);
        req.setAttribute("departlist",departlist);
        req.setAttribute("Key",Key);
        req.getRequestDispatcher("/depart-show.jsp").forward(req, resp);
    }
}
