package com.pgw.controller.doctor;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Departments;
import com.pgw.pojo.ProfessionalTitles;
import com.pgw.service.DepartmentsService;
import com.pgw.service.DoctorsService;
import com.pgw.service.ProfessionalTilesService;
import com.pgw.service.impl.DepartmentsServiceImpl;
import com.pgw.service.impl.DoctorsServiceImpl;
import com.pgw.service.impl.ProfessionalTilesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/doctor/querydoctor")
public class QueryDoctorServlet extends HttpServlet {

    private DoctorsService doctorsService = new DoctorsServiceImpl();
    DepartmentsService departmentsService = new DepartmentsServiceImpl();
    ProfessionalTilesService professionalTilesService = new ProfessionalTilesServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        Integer departmentId = null;
        Integer professionalTitleId = null;
        if(req.getParameter("departmentId") != null && !"".equals(req.getParameter("departmentId"))) {
            departmentId = Integer.valueOf(req.getParameter("departmentId"));
        }
        req.getParameter("departmentId");
        if(req.getParameter("professionalTitleId")!=null && !"".equals(req.getParameter("professionalTitleId"))){
            professionalTitleId = Integer.valueOf(req.getParameter("professionalTitleId"));
        };
        List<Departments> departmentsList = null;
        List<ProfessionalTitles> professionalTitlesList = null;
        String page = req.getParameter("pages");

        PageInfo pageInfo = null;
        try {
            pageInfo = doctorsService.querydoctor(page,name,departmentId,professionalTitleId);
            departmentsList = departmentsService.QUERYDEPARTMENTLIST(null,null,null,2,null);
            professionalTitlesList =  professionalTilesService.getall();
      } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        req.setAttribute("pageInfo", pageInfo);
        req.setAttribute("name", name);
        req.setAttribute("departmentId", departmentId);
        req.setAttribute("professionalTitleId", professionalTitleId);
        req.setAttribute("departmentsList", departmentsList);
        req.setAttribute("professionalTitlesList", professionalTitlesList);
        req.getRequestDispatcher("/doctor-show.jsp").forward(req, resp);

    }
}
