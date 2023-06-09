package com.fit.action.backend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fit.util.StringUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

import com.fit.core.base.BaseServlet;

@WebServlet("/login")
public class LoginServlet extends BaseServlet {

    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        if (StringUtil.isEmpty(username)) {
            request.setAttribute("msg", "请输入账号！");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }
        String password = request.getParameter("password");
        if (StringUtil.isEmpty(password)) {
            request.setAttribute("msg", "请输入密码！");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            currentUser.login(token);
            System.out.println("认证成功");
            response.sendRedirect("cms");
        } catch (AuthenticationException e) {
            e.printStackTrace();
            System.out.println("认证失败");
            request.setAttribute("msg", "账号密码错误！");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
