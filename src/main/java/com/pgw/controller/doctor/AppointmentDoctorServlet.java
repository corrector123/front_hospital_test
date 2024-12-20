package com.pgw.controller.doctor;

import com.pgw.pojo.Departments;
import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import com.pgw.pojo.ProfessionalTitles;
import com.pgw.service.DepartmentsService;
import com.pgw.service.DoctorScheduleService;
import com.pgw.service.DoctorsService;
import com.pgw.service.ProfessionalTilesService;
import com.pgw.service.impl.DepartmentsServiceImpl;
import com.pgw.service.impl.DoctorScheduleServiceImpl;
import com.pgw.service.impl.DoctorsServiceImpl;
import com.pgw.service.impl.ProfessionalTilesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/doctor/appointment")
public class AppointmentDoctorServlet extends HttpServlet {
    DoctorsService doctorsService = new DoctorsServiceImpl();
    DepartmentsService departmentsService = new DepartmentsServiceImpl();
    ProfessionalTilesService professionalTilesService = new ProfessionalTilesServiceImpl();
    DoctorScheduleService doctorScheduleService = new DoctorScheduleServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer doctorId = Integer.valueOf(req.getParameter("doctorId"));
        Doctors doctors = null;
        Departments departments = null;
        ProfessionalTitles professionalTitles = null;
        DoctorSchedule  []doctorSchedules = new DoctorSchedule[7];
        DoctorSchedule  []doctorSchedules1 = new DoctorSchedule[7];
        DoctorSchedule temp = new DoctorSchedule();
        for (int i = 0; i < 7; i++) {
            doctorSchedules[i] = new DoctorSchedule();
            doctorSchedules1[i] = new DoctorSchedule();
            doctorSchedules[i].setDoctorId(doctorId);
            doctorSchedules1[i].setDoctorId(doctorId);
            try {
                doctorSchedules[i].setDate(doctorScheduleService.getdate(i+1));
                Integer w = doctorScheduleService.getweek(doctorSchedules[i].getDate());
                w = (w + i) % 7;
                w = w + 2;
                w = w % 7;
                doctorSchedules[i].setWeek(w);
                doctorSchedules1[i].setDate(doctorScheduleService.getdate(i+1));
                temp = doctorScheduleService.getschedulebyid_date(doctorId,doctorSchedules[i].getDate(),"上午");
                if (temp != null) {
                    doctorSchedules[i].quick(temp);
                }
                temp = doctorScheduleService.getschedulebyid_date(doctorId,doctorSchedules1[i].getDate(),"下午");
                if (temp != null) {
                    doctorSchedules1[i].quick(temp);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        try {
            doctors = doctorsService.QUERYDOCTOR(doctorId,null,null,null,null,null,null,null,null,null,null);
            departments = departmentsService.QUERYDEPARTMENT(doctors.getDepartmentId(),null,null,null,null);
            professionalTitles = professionalTilesService.getprofessionalbyid(doctors.getProfessionalTitleId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        doctors.setDepartment(departments);
        doctors.setProfessionalTitle(professionalTitles);

        req.setAttribute("doctors", doctors);
        req.setAttribute("doctorSchedules", doctorSchedules);
        req.setAttribute("doctorSchedules1", doctorSchedules1);
        req.getRequestDispatcher("/doctordetail.jsp").forward(req, resp);

    }
}
