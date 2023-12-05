package com.tuandhpc05076.asmjava4.controller;

import java.io.IOException;
import java.util.List;

import com.tuandhpc05076.asmjava4.model.User;
import com.tuandhpc05076.asmjava4.service.UserService;
import com.tuandhpc05076.asmjava4.service.implement.UserServiceImpl;
import com.tuandhpc05076.asmjava4.utils.CookieUtils;
import com.tuandhpc05076.asmjava4.utils.sendMail;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet({ "/login", "/register", "/fogotPassword" })
public class login extends HttpServlet {
	UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("login")) {
			String username = CookieUtils.get("usernameASM", req);
			String password = CookieUtils.get("passwordASM", req);
			String remember = CookieUtils.get("rememberASM", req);
			try {
				System.out.println("mới đăng nhập xong" + username + password + remember);
				req.setAttribute("username", username);
				req.setAttribute("password", password);
				req.setAttribute("remember", Boolean.parseBoolean(remember));
			} catch (Exception e) {
				req.setAttribute("remember", false);
				// TODO: handle exception
			}
			login(req, resp);
		} else if (uri.contains("register")) {
			register(req, resp);
		} else if (uri.contains("fogotPassword")) {
			fotgotPassword(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("login")) {
			String email = req.getParameter("username");
			String password = req.getParameter("password");
			String remember = req.getParameter("remember");
			User user = userService.login(email, password);
			if (user != null) {
				HttpSession session = req.getSession();
				session.setAttribute("user", user);
				int hours = (remember == null) ? 0 : 30 * 24;
				System.out.println(hours);
				CookieUtils.Add("usernameASM", email, hours, resp);
				CookieUtils.Add("passwordASM", password, hours, resp);
				CookieUtils.Add("rememberASM", remember, hours, resp);
				System.out.println("Đăng nhập thành công");
				resp.sendRedirect(req.getContextPath() + "/index");
			} else {
				System.out.println("Đăng nhập không thành công");
				req.setAttribute("message", "Đăng nhập không thành công");
				login(req, resp);
			}
		} else if (uri.contains("fogotPassword")) {
			String email = req.getParameter("fogotPassword");
			List<User> listEmailUser = userService.findAll();
			boolean check = false;
			for (User user : listEmailUser) {
				if (user.getEmail().equalsIgnoreCase(email)) {
					User useremail = userService.findByEmail(email);
					sendMail.sendmail(email, "Hệ thống xem video trực tuyến ",
							"Mật khẩu của bạn là: " + useremail.getPassword(), req);
					req.setAttribute("thongBao1", "Gửi mail thành công");
					check = true;
				}
			}
			if (!check) {
				req.setAttribute("thongBao1", "Không có email này trong danh sách không thể gửi mail");
			}
			//resp.sendRedirect(req.getContextPath() + "/fogotPassword");
			req.getRequestDispatcher("/views/fogotPassword.jsp").forward(req, resp);

		}

		else if (uri.contains("register")) {
			System.out.println("Chạy được register");
			String fullname = req.getParameter("fullname");
			String password = req.getParameter("password");
			String email = req.getParameter("email");
			System.out.println("Email is: " + email);
			String username = req.getParameter("username");
			String confirmPassword = req.getParameter("confirmPassword");
			if (!confirmPassword.equals(password)) {
				req.setAttribute("messageConfimPassword", "Nhập lại mật khẩu phải trùng với mật khẩu");
				req.getRequestDispatcher("/views/register.jsp").forward(req, resp);

				System.out.println("không trùng password");
			} else {
				try {
					userService.create(password, username, email, fullname, false);
					System.out.println("Thêm dữ liệu thành công");
					req.setAttribute("message", "Đăng kí thành công");
					req.setAttribute("messageConfimPassword", "");
					resp.sendRedirect(req.getContextPath() + "/register");
				} catch (Exception e) {
					System.out.println("Thêm dữ liệu không thành công");
					req.setAttribute("message", "Đăng kí không thành công");
					e.printStackTrace();
					// TODO: handle exception
				}
			}

		}
	}

	private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
	}

	private void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
	}

	private void fotgotPassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/fogotPassword.jsp").forward(req, resp);
	}
}
