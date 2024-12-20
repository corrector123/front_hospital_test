package com.pgw.filter;


import com.pgw.service.PatientsService;
import com.pgw.service.impl.PatientsServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebFilter("/needlogin/*")
public class cookieFilter implements Filter {

    private PatientsService patientsService = new PatientsServiceImpl();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String phone = (String) request.getSession().getAttribute("userphone");
        if(phone == null){
            Cookie[] cookies = request.getCookies();
            for(Cookie cookie : cookies){
                if((cookie.getName()).equals("userphone")){
                    phone = cookie.getValue();
                }
            }
            boolean flag = false;
            try {
               flag = patientsService.querypatientbyphone(phone);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            if(flag) {request.getSession().setAttribute("userphone", phone);}
        }
        if(phone != null && !phone.isEmpty()) {
            filterChain.doFilter(request, response);
        }
        else{
            response.sendRedirect( request.getContextPath()+"/login.jsp");
        }
    }

    @Override
    public void destroy() {
//        Filter.super.destroy();
    }
}
