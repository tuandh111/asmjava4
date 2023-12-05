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
@WebServlet("/index")
public class HomeController extends HttpServlet {
	public static final int VIDEO_MAX_PAGE_SIZE = 4;
	VideoService videoService= new VideoServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		req.setAttribute("userLogin", user);
//		List<Video> listVideo =videoService.findAll();
//		req.setAttribute("listVideo", listVideo);
		
		List<Video> countVideo = videoService.findAll();
		int maxPage = (int) Math.ceil(countVideo.size() / (double) VIDEO_MAX_PAGE_SIZE);
		req.setAttribute("maxPage", maxPage);
		List<Video> videos;
		String pageNumber = req.getParameter("page");
		if (pageNumber == null ||  Integer.valueOf(pageNumber) > maxPage ) {
			//Return to Page 1 neu ma Page rong or tham so truyen cua page > maxPage trong List 
			videos = videoService.findAll(1, VIDEO_MAX_PAGE_SIZE);
			req.setAttribute("currentPage", 1);
		} else {
			videos = videoService.findAll(Integer.valueOf(pageNumber), VIDEO_MAX_PAGE_SIZE);
			req.setAttribute("currentPage",Integer.valueOf(pageNumber));
		}
		req.setAttribute("listVideo", videos);
		
		
		req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
