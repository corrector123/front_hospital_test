package com.pgw.controller;

import com.alibaba.fastjson.JSON;
import com.pgw.pojo.Announcements;
import com.pgw.service.AnnouncementService;
import com.pgw.service.impl.AnnouncementServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/getSlider")
public class GetSliderServlet extends HttpServlet {
    private final AnnouncementService announcementService = new AnnouncementServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Announcements> sliderAnnounceList = announcementService.getSliderAnnounceList();
        PrintWriter writer = resp.getWriter();
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        writer.println(JSON.toJSON(sliderAnnounceList));
        writer.flush();
        writer.close();
    }
}
