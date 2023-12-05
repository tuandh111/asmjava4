package com.tuandhpc05076.asmjava4.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.tuandhpc05076.asmjava4.dao.ShareDAO;
import com.tuandhpc05076.asmjava4.dao.implement.HistoryDaoImpl;
import com.tuandhpc05076.asmjava4.model.History;
import com.tuandhpc05076.asmjava4.model.User;
import com.tuandhpc05076.asmjava4.model.Video;
import com.tuandhpc05076.asmjava4.service.HistoryService;
import com.tuandhpc05076.asmjava4.service.ShareService;
import com.tuandhpc05076.asmjava4.service.VideoService;
import com.tuandhpc05076.asmjava4.service.implement.HistoryServiceImpl;
import com.tuandhpc05076.asmjava4.service.implement.ShareServiceImpl;
import com.tuandhpc05076.asmjava4.service.implement.VideoServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
@MultipartConfig
@WebServlet({ "/watchVideo/*", "/watchVideo", "/likeVideo", "/share" })
public class VideoUserController extends HttpServlet {
	VideoService videoService = new VideoServiceImpl();
	HistoryService historyService = new HistoryServiceImpl();
	ShareService shareService = new ShareServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String methob = req.getMethod();

		boolean processed = false;
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		req.setAttribute("userLogin", user);
			String uri = req.getRequestURI();
			String pathInfo = req.getPathInfo();
			if (pathInfo != null) {
				String videoId = pathInfo.substring(1);
				System.out.println("Video ID: " + videoId);
				processed = true;
				Video video = videoService.findByHref(videoId);
				List<Video> listVideo = videoService.findAll();
				Collections.shuffle(listVideo);
				List<Video> limitedList = listVideo.subList(0, Math.min(6, listVideo.size()));
				// Đặt danh sách giới hạn làm thuộc tính của request
				req.setAttribute("listVideo", limitedList);
				req.setAttribute("video", video);
				req.getSession().setAttribute("videoLike", video);
				try {
					History history = historyService.findByUserIdAndVideoId(user.getUserID(), video.getId());
					if (history == null) {
						req.setAttribute("LikeVideo", "Like");
					} else {
						req.setAttribute("LikeVideo", "Dislike");
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
			} else {
				System.out.println("Invalid pathInfo");
			}
		
		//String uri = req.getRequestURI();
		String url = uri.substring(uri.lastIndexOf("/") + 1);
		req.setAttribute("url", url);
		if (uri.contains("share")) {
			Video video = (Video) session.getAttribute("videoLike");
			System.out.println(video.getDescription());
			req.setAttribute("title",video.getTitle());
			req.setAttribute("linkShare","https://www.youtube.com/embed/"+video.getDescription());
			req.getRequestDispatcher("/views/share.jsp").forward(req, resp);
		} else
			req.getRequestDispatcher("/views/video.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		req.setAttribute("userLogin", user);
		Video video = (Video) session.getAttribute("videoLike");
		String uri = req.getRequestURI();
		String url = uri.substring(uri.lastIndexOf("/") + 1);
		List<Video> listVideo;

		String action = req.getParameter("action");
		if ("share".equals(action)) {
			System.out.println("Chạy được share");
			String to = req.getParameter("to");
			String subject = req.getParameter("subject");
			String content = req.getParameter("content");
			String username = "hoangtuan97531@gmail.com";
			String password = "sjwomehzrjwnafpd";
			Properties p = new Properties();
			p.setProperty("mail.smtp.starttls.enable", "true");
			p.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", 587);
			Session s = Session.getInstance(p, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});
			Message msg = new MimeMessage(s);
			try {
				msg.setFrom(new InternetAddress(username));
				msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
				MimeBodyPart contenPart = new MimeBodyPart();
				contenPart.setContent(content, "text/html; charset=utf-8");
				msg.setSubject(subject);
				msg.setText(content);
			

//				File file1 = new File(req.getServletContext().getRealPath("/files"));
//				System.out.println(file1 + "file là");
//				if (!file1.exists())
//					file1.mkdirs();
//				Part photo = req.getPart("file_");
//				File file = new File(file1, photo.getSubmittedFileName());
//				photo.write(file.getAbsolutePath());
//				MimeBodyPart part = new MimeBodyPart();
//				part.setDataHandler(new DataHandler(new FileDataSource(file)));
//				part.setFileName(file.getName());
//				Multipart multipart = new MimeMultipart();
//				multipart.addBodyPart(part);
//				msg.setContent(multipart);
				
				Transport.send(msg);
				shareService.create(user.getUserID(),video.getId() ,to);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if ("showSearch".equals(action)) {
			listVideo = null;
			String param = req.getParameter("searching");
			listVideo = videoService.findByKeyword(param);
			req.setAttribute("listVideo", listVideo);
			req.setAttribute("video", listVideo.get(0));
			req.getRequestDispatcher("/views/video.jsp").forward(req, resp);
		} else {
			listVideo = videoService.findAll();
			Collections.shuffle(listVideo);
			req.setAttribute("listVideo", listVideo);
			Video video1 = videoService.findByHref(video.getDescription().trim());
			History history = historyService.findByUserIdAndVideoId(user.getUserID(), video.getId());
			if (history == null) {
				req.setAttribute("LikeVideo", "Like");
				historyService.create(user, video1);
			} else {
				req.setAttribute("LikeVideo", "UnLike");
				historyService.delele(history);
			}
			resp.sendRedirect(req.getContextPath() + "/watchVideo/" + video.getDescription());

		}

	}
}
