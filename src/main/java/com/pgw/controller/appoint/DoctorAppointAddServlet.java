package com.pgw.controller.appoint;

import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Patients;
import com.pgw.service.AppointmentsService;
import com.pgw.service.DoctorScheduleService;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.AppointmentsServiceImpl;
import com.pgw.service.impl.DoctorScheduleServiceImpl;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet("/needlogin/doctorappointadd")
public class DoctorAppointAddServlet extends HttpServlet {

    private DoctorScheduleService doctorScheduleService = new DoctorScheduleServiceImpl();
    private AppointmentsService appointmentsService = new AppointmentsServiceImpl();
    private PatientsService patientsService = new PatientsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer sid = Integer.valueOf(req.getParameter("sid"));
        double free = Double.parseDouble(req.getParameter("free"));
        String balance1 = req.getParameter("free");
        DoctorSchedule doctorSchedule = new DoctorSchedule();
        Patients patients = null;
        String status = "booked";
        Integer number = 0;
        String phone = (String) req.getSession().getAttribute("userphone");

        try {
            patients = patientsService.getpatientbyphone(phone);
            doctorSchedule = doctorScheduleService.getschedulebysid(sid);
            number = appointmentsService.QUERYPATIENT(patients.getPatientId(),doctorSchedule.getDoctorId(), doctorSchedule.getDate(),doctorSchedule.getShiftTime(),status);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        double balance = Double.parseDouble(patients.getBalance());
        if(free > balance){
            resp.sendRedirect(req.getContextPath() + "/needlogin/result-show.jsp?flag4=f");
        }else{
            if(number==0) {
                try {
                    appointmentsService.addappointment(phone,doctorSchedule.getDoctorId(),doctorSchedule.getDate(),doctorSchedule.getShiftTime(),"booked");
                    patientsService.descmoney(phone,balance1);
                    doctorScheduleService.desccountbyid(sid);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                resp.sendRedirect(req.getContextPath() + "/needlogin/result-show.jsp?flag1=f");
            }
            else{
                resp.sendRedirect(req.getContextPath() + "/needlogin/result-show.jsp?flag2=f");
            }
        }

    }
}
