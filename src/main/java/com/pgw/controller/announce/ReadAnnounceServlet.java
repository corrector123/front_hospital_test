package com.pgw.controller.announce;

import com.github.pagehelper.PageInfo;
import com.pgw.pojo.Announcements;
import com.pgw.service.AnnouncementService;
import com.pgw.service.impl.AnnouncementServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/announce/readAnnounce")
public class ReadAnnounceServlet extends HttpServlet {
    private AnnouncementService announcementService = new AnnouncementServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数
        String id = req.getParameter("id");
        //调用业务层
        Announcements announcements = announcementService.getAnnounceById(id);
        //把公告对象设置到request作用域中
        req.setAttribute("announcements",announcements);
        //跳转到阅读页面，回显对象信息
        req.getRequestDispatcher("/readAnnouncement.jsp").forward(req,resp);
    }
}
