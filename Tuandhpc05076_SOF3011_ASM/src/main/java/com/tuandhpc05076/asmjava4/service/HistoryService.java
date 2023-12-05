package com.tuandhpc05076.asmjava4.service;

import java.util.List;

import com.tuandhpc05076.asmjava4.model.History;
import com.tuandhpc05076.asmjava4.model.User;
import com.tuandhpc05076.asmjava4.model.Video;

	

public interface HistoryService {
	List<History> findByUser(String username);
	List<History> findByUserAndIsLiked(String username);
	History findByUserIdAndVideoId(Integer userId,Integer videoId);
	History create(User user,Video video);
	boolean updateLikeOrUnlike(User user,String videoHref);
	History delele(History entity);
}
