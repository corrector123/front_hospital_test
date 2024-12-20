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
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("/announce/getAnnounceList")
public class GetAnnounceListServlet extends HttpServlet {
    private AnnouncementService announcementService = new AnnouncementServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求中用户请求当前页
        String page = req.getParameter("page");//用户请求的当前页
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String creationTime = req.getParameter("creationTime");
        String creator = req.getParameter("creator");
        String type = req.getParameter("type");

        Announcements announcements = new Announcements(title,content,creationTime,creator,type);
        System.out.println("announcements = " + announcements);
        //业务层返回PageInfo对象，包含分页信息，集合列表
        PageInfo pageInfo = announcementService.getAnnounceListPage(page,announcements);
        System.out.println("pageInfo = " + pageInfo);
        //跳转到jsp展示数据,把需要展示的数据设置到request作用域中
        req.setAttribute("pageInfo",pageInfo);
        req.setAttribute("announcements",announcements);
        //转发
        req.getRequestDispatcher("/announcementList.jsp").forward(req,resp);
    }
}
