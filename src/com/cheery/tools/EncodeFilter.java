package com.cheery.tools;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodeFilter implements Filter {

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest requset = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;
        /*在过滤器中统一编码*/
        requset.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        chain.doFilter(req, resp);  //执行
    }

    public void init(FilterConfig config) throws ServletException {

    }


}
