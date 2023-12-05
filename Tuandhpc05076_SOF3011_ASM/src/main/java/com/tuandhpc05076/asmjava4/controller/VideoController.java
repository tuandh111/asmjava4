package com.tuandhpc05076.asmjava4.controller;

import java.io.IOException;
import java.util.List;

import com.tuandhpc05076.asmjava4.model.User;
import com.tuandhpc05076.asmjava4.model.Video;
import com.tuandhpc05076.asmjava4.service.VideoService;
import com.tuandhpc05076.asmjava4.service.implement.VideoServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet({ "/video", "/video/create","/video/update/*", "/video/delete", "/video/edit/*","/video/like" })
public class VideoController extends HttpServlet {
	VideoService videoService = new VideoServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		List<Video> listVideo =videoService.findAll();
		req.setAttribute("listVideo", listVideo);
		req.setAttribute("userLogin", user);
		
		String uri = req.getRequestURI();
		if (uri.contains("edit")) {
			
			boolean processed= false;
			if(!processed) {
				String id = uri.substring(uri.lastIndexOf("/") + 1);
			Video form = videoService.findByID(Integer.parseInt(id.trim()));
			req.setAttribute("message", "Cập nhật ID: " + id);
			if (form != null) {
				req.setAttribute("form", form);
				req.setAttribute("message", "Cập nhật ID: " + id);
				processed = true;
			} else {
				System.out.println("Không tìm thấy người dùng với id: " + id);
			}
		}
		}
		
		req.getRequestDispatcher("/views/insertVideo.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("create")) {
			String title = req.getParameter("title");
			String poster = req.getParameter("poster");
			String genre = req.getParameter("genre");
			String description = req.getParameter("description");
			Video video = new Video();
			video.setTitle(title);
			video.setPoster(poster);
			video.setGenre(genre);
			video.setDescription(description);
			videoService.create(video);
			System.out.println("Chạy được up");
		}else if(uri.contains("delete")) {
			String description = req.getParameter("description");
			videoService.delete(description);
		}
		else if(uri.contains("update")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			System.out.println("id:"+id);
			try {
				String title = req.getParameter("title");
				String poster = req.getParameter("poster");
				String genre = req.getParameter("genre");
				String description = req.getParameter("description");
				Video video = videoService.findByID(Integer.parseInt(id));
				video.setId(Integer.parseInt(id));
				video.setTitle(title);
				video.setPoster(poster);
				video.setGenre(genre);
				video.setDescription(description);
				videoService.update(video);
				System.out.println("Chạy được update");
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

		}
		resp.sendRedirect(req.getContextPath()+"/video");
	}
}
