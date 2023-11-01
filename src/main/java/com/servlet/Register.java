package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entities.User;

@WebServlet("/register")
public class Register extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("uname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.userRegister(user);
		
		if (true) {
			HttpSession session = req.getSession();
			session.setAttribute("reg-msg", "Registration Successfully");
			resp.sendRedirect("register.jsp");
		}else {
			HttpSession session = req.getSession();
			session.setAttribute("error-msg", "Something went wrong ");
			resp.sendRedirect("register.jsp");
		}
	}
}
