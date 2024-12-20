package com.pgw.controller.appoint;

import com.pgw.pojo.Appointments;
import com.pgw.service.AppointmentsService;
import com.pgw.service.DoctorScheduleService;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.AppointmentsServiceImpl;
import com.pgw.service.impl.DoctorScheduleServiceImpl;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/doctorappointdesc")
public class DoctorAppointDescServlet extends HttpServlet {
    private AppointmentsService appointmentsService = new AppointmentsServiceImpl();
    private DoctorScheduleService doctorScheduleService = new DoctorScheduleServiceImpl();
    private PatientsService patientsService = new PatientsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("aid"));
        Integer aid = Integer.valueOf(req.getParameter("aid"));
        String free = req.getParameter("free");
        Appointments appointments = null;
        String userphone = (String) req.getSession().getAttribute("userphone");
        try {
            appointments = appointmentsService.getappointbyaid(aid);
            doctorScheduleService.addappoint(appointments.getDoctorId(),appointments.getAppointmentDate(),appointments.getAppointmentTime());
            appointmentsService.cancell(aid);
            patientsService.addmoney(userphone,free);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect(req.getContextPath() + "/needlogin/querypersonappoint");
    }
}
