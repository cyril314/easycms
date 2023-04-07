package com.fit.core.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 编码设置过滤器
 */
public class CharsetEncodingFilter implements Filter {

    private String encoding;

    public void destroy() {
        System.out.println("--------destroy---------");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filter) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        filter.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        System.out.println("--------init---------");
        // this.encoding = arg0.getInitParameter("encoding");
        System.out.println(encoding);
    }
}
