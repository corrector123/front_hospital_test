package com.pgw.controller.appoint;

import com.pgw.pojo.DoctorSchedule;
import com.pgw.pojo.Doctors;
import com.pgw.pojo.Patients;
import com.pgw.service.AppointmentsService;
import com.pgw.service.DoctorScheduleService;
import com.pgw.service.DoctorsService;
import com.pgw.service.PatientsService;
import com.pgw.service.impl.DoctorsServiceImpl;
import com.pgw.service.impl.PatientsServiceImpl;
import com.pgw.service.impl.AppointmentsServiceImpl;
import com.pgw.service.impl.DoctorScheduleServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/needlogin/DepartmentAppointAdd")
public class DepartmentAppointAddServlet extends HttpServlet {
    private DoctorScheduleService doctorScheduleService = new DoctorScheduleServiceImpl();
    private AppointmentsService appointmentsService = new AppointmentsServiceImpl();
    private PatientsService patientsService = new PatientsServiceImpl();
    private DoctorsService doctorsService = new DoctorsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String date = req.getParameter("date");
        String shiftTime = req.getParameter("shiftTime");
        Integer departmentId = Integer.valueOf(req.getParameter("departmentId"));
        String status = "booked";
        Integer number = 0;
        Patients patients = new Patients();
        DoctorSchedule doctorSchedule = new DoctorSchedule();
        Doctors doctors = new Doctors();
        String phone = (String) req.getSession().getAttribute("userphone");


        try {
            patients = patientsService.getpatientbyphone(phone);
            number = appointmentsService.QUERY(patients.getPatientId(),date,shiftTime,status);
            doctorSchedule = doctorScheduleService.desccountbydid(date,shiftTime,departmentId);
            doctors = doctorsService.QUERYDOCTOR(doctorSchedule.getDoctorId(),null,null,null,null,null,null,null,null,null,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        double balance = Double.parseDouble(patients.getBalance());
        double free = Double.parseDouble(doctors.getRegistrationFee());
        String balance1 = doctors.getRegistrationFee();

        if(number<4){

            if(free > balance){
                resp.sendRedirect(req.getContextPath() + "/needlogin/result-show.jsp?flag5=f");
            }else{
                    try {
                        appointmentsService.addappointment(phone,doctorSchedule.getDoctorId(),date,shiftTime,status);
                        patientsService.descmoney(phone,balance1);
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                        resp.sendRedirect(req.getContextPath() + "/needlogin/result-show.jsp?flag1=f");
                }
            }
        else {
            resp.sendRedirect(req.getContextPath() + "/needlogin/result-show.jsp?flag3=f");
        }
    }
}
