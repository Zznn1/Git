/*
package com.appinfo.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(urlPatterns = {"/jsp/*"})
public class DevLoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest servletRequest=(HttpServletRequest) request;
        //放行URL
        if(servletRequest.getRequestURI().equals("/devUser/devLogin")){
            filterChain.doFilter(request,response);
        }
        Object user = servletRequest.getSession().getAttribute("devLogin");
        if (user==null){
            servletRequest.getRequestDispatcher("/jsp/devlogin.jsp").forward(request,response);
        }else {
            //放行请求
            filterChain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {

    }
}
*/
