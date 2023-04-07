package com.fit.core.base;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import com.fit.core.GuiceInit;
import com.fit.util.FastJsonUtils;

public class BaseServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected static final String prefix = "/WEB-INF/views/";

    public void init() throws ServletException {
        super.init();
        GuiceInit.getInjector().injectMembers(this);
    }

    public void write(String s, HttpServletResponse response) {
        writeObj(s, response);
    }

    public void write(Object o, HttpServletResponse response) {
        writeObj(FastJsonUtils.toJSON(o), response);
    }

    // 直接转json写出去
    public void writeObj(Object o, HttpServletResponse response) {
        PrintWriter out = null;
        try {
            out = response.getWriter();
            out.print(o);
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            out.close();
        }
    }

    public <T> List<T> newArrayList() {
        return new ArrayList<T>();
    }

    public Map<String, Object> newHashMap() {
        return new HashMap<String, Object>();
    }
}
