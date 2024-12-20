package com.pgw.controller.depart;

import com.pgw.pojo.Departments;
import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import com.pgw.pojo.ProfessionalTitles;
import com.pgw.service.DepartmentsService;
import com.pgw.service.DoctorScheduleService;
import com.pgw.service.impl.DepartmentsServiceImpl;
import com.pgw.service.impl.DoctorScheduleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/depart/appointment")
public class AppointmentDepartServlet extends HttpServlet {
    private DoctorScheduleService doctorScheduleService = new DoctorScheduleServiceImpl();
    private DepartmentsService departmentsService = new DepartmentsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer did = Integer.valueOf(req.getParameter("did"));
        DoctorSchedule  []doctorSchedules = new DoctorSchedule[7];
        DoctorSchedule  []doctorSchedules1 = new DoctorSchedule[7];
        DoctorSchedule temp = new DoctorSchedule();
        Departments departments = null;
        try {
            departments = departmentsService.QUERYDEPARTMENT(did,null,null,null,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        for (int i = 0; i < 7; i++) {
            doctorSchedules[i] = new DoctorSchedule();
            doctorSchedules1[i] = new DoctorSchedule();
            doctorSchedules[i].setDepartmentId(did);
            doctorSchedules1[i].setDepartmentId(did);
            try {
                doctorSchedules[i].setDate(doctorScheduleService.getdate(i+1));
                Integer w = doctorScheduleService.getweek(doctorSchedules[i].getDate());
                w = (w + i) % 7;
                w = w + 2;
                w = w % 7;
                doctorSchedules[i].setWeek(w);
                doctorSchedules1[i].setDate(doctorScheduleService.getdate(i+1));
                temp = doctorScheduleService.getschedulebydid_date(did,doctorSchedules[i].getDate(),"上午");
                if (temp != null) {
                    doctorSchedules[i].quick(temp);
                }
                temp = doctorScheduleService.getschedulebydid_date(did,doctorSchedules1[i].getDate(),"下午");
                if (temp != null) {
                    doctorSchedules1[i].quick(temp);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        req.setAttribute("doctorSchedules", doctorSchedules);
        req.setAttribute("doctorSchedules1", doctorSchedules1);
        req.setAttribute("departments", departments);
        req.getRequestDispatcher("/department-appointment-detail.jsp").forward(req, resp);

    }
}
