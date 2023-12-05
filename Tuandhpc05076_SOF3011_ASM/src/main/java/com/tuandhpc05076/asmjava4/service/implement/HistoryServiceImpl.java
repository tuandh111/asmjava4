package com.tuandhpc05076.asmjava4.service.implement;

import java.sql.Timestamp;
import java.util.List;

import com.tuandhpc05076.asmjava4.dao.HistoryDAO;
import com.tuandhpc05076.asmjava4.dao.implement.HistoryDaoImpl;
import com.tuandhpc05076.asmjava4.model.History;
import com.tuandhpc05076.asmjava4.model.User;
import com.tuandhpc05076.asmjava4.model.Video;
import com.tuandhpc05076.asmjava4.service.HistoryService;
import com.tuandhpc05076.asmjava4.service.VideoService;


public class HistoryServiceImpl implements HistoryService{
	private HistoryDAO dao;
	
	private VideoService videoService = new VideoServiceImpl();
	
	public HistoryServiceImpl() {
		dao = new HistoryDaoImpl();
	}
	@Override
	public List<History> findByUser(String username) {
		//
		return dao.findByUser(username);
	}

	@Override
	public List<History> findByUserAndIsLiked(String username) {
		// 
		return dao.findByUserAndIsLiked(username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		// 
		return dao.findByUserIdAndVideoId(userId, videoId);
	}

	@Override
	public History create(User user, Video video) {
		// 
		History existHistory = findByUserIdAndVideoId(user.getUserID(), video.getId());
		if (existHistory == null) {
			existHistory = new History();
			existHistory.setUser(user.getUserID());
			existHistory.setVideo(video.getId());
			return dao.create(existHistory);
			
		}
		return existHistory;
	}

	@Override
	public boolean updateLikeOrUnlike(User user, String videoHref) {
		// 
		Video video = videoService.findByHref(videoHref);
		History existHistory = findByUserIdAndVideoId(user.getUserID(), video.getId());
		
//		 if(existHistory.getIsLiked() == Boolean.FALSE) {
//			existHistory.setIsLiked(Boolean.TRUE);
//			existHistory.setLikedDate(new Timestamp(System.currentTimeMillis()));
//		}else {
//			existHistory.setIsLiked(Boolean.FALSE);
//			existHistory.setLikedDate(null);
//		}
		 
		History updateHistory = dao.update(existHistory);
		return updateHistory != null ? true : false ;
	}
	@Override
	public History delele(History entity) {
		// TODO Auto-generated method stub
		return dao.delele(entity);
	}
	

}
