package com.tuandhpc05076.asmjava4.controller;

import java.io.IOException;

import com.tuandhpc05076.asmjava4.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/introduce")
public class Introduce extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		req.setAttribute("userLogin", user);
		req.getRequestDispatcher("/views/introduce.jsp").forward(req, resp);
	}
}
