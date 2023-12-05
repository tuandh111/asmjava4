package com.tuandhpc05076.asmjava4.controller;

import java.io.IOException;
import java.util.List;

import com.tuandhpc05076.asmjava4.model.User;
import com.tuandhpc05076.asmjava4.service.UserService;
import com.tuandhpc05076.asmjava4.service.implement.UserServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet({ "/user", "/user/create", "/user/delete","/user/update/*" })
public class UserController extends HttpServlet {
	UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		req.setAttribute("userLogin", user);
		List<User> listUser = userService.findAll();
		req.setAttribute("listUser", listUser);
		String uri = req.getRequestURI();
		if (uri.contains("update")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			User form = userService.findByID(Integer.parseInt(id));
			req.setAttribute("message", "Cập nhật ID: " + id);
			if (form != null) {
				req.setAttribute("form", form);
				req.setAttribute("message", "Cập nhật ID: " + id);
			} else {
				System.out.println("Không tìm thấy người dùng với id: " + id);
			}
		}
		req.getRequestDispatcher("/views/user.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("create")) {
			createUser(req, resp);
		}
		else if (uri.contains("delete")) {
			deleteUser(req, resp);
		}else if (uri.contains("update")) {
			updateUser(req, resp);
		}
		resp.sendRedirect(req.getContextPath() + "/user");
	}

	private void createUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String vaitro = req.getParameter("vaiTro");
		Boolean role = false;
		if (vaitro.equals("Admin"))
			role = true;
		System.out.println("Role: " + role);
		userService.create(password, username, email, fullname, role);

	}
	private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		userService.delete(username);

	}
	private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/") + 1);
		System.out.println("id"+id);
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String vaitro = req.getParameter("vaiTro");
		Boolean role = false;
		if (vaitro.equals("Admin"))
			role = true;
		User user = new User();
		user.setUserID(Integer.parseInt(id));
		user.setPassword(password);
		user.setUsername(username);
		user.setFullname(fullname);
		user.setEmail(email);
		user.setIsAdmin(role);
		userService.update(user);
		System.out.println("update successfully");

	}
}
