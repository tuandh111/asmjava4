package com.tuandhpc05076.asmjava4.service.implement;

import com.tuandhpc05076.asmjava4.dao.ShareDAO;
import com.tuandhpc05076.asmjava4.dao.UserDAO;
import com.tuandhpc05076.asmjava4.dao.implement.ShareDaoImpl;
import com.tuandhpc05076.asmjava4.dao.implement.UserDaoImpl;
import com.tuandhpc05076.asmjava4.model.share;
import com.tuandhpc05076.asmjava4.service.ShareService;

public class ShareServiceImpl implements ShareService {
	private  ShareDAO dao;
	public ShareServiceImpl() {
		dao = new ShareDaoImpl();
	}
	@Override
	public share create(int userID, int videoID, String email) {
		// TODO Auto-generated method stub
		share entity = new share();
		entity.setUser(userID);
		entity.setVideo(videoID);
		entity.setEmail(email);
		return dao.create(entity);
	}

}
