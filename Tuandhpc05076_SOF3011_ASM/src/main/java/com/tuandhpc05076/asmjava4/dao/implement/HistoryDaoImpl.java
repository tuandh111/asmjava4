package com.tuandhpc05076.asmjava4.dao.implement;

import java.util.List;

import com.tuandhpc05076.asmjava4.dao.AbstractDao;
import com.tuandhpc05076.asmjava4.dao.HistoryDAO;
import com.tuandhpc05076.asmjava4.model.History;


public class HistoryDaoImpl extends AbstractDao<History> implements HistoryDAO {

	@Override
	public List<History> findByUser(String username) {
		// 
		String sql = "SELECT o FROM History o WHERE o.user.username = ?1 AND o.video.isActive = 2"
				+ " ORDER BY o.viewedDate DESC";
		return super.findMany(History.class,sql, username);
	}

	@Override
	public List<History> findByUserAndIsLiked(String username) {
		// 
		String sql = "SELECT o FROM History o WHERE o.user.username = ?1 AND o.isLiked = 2"
				+ " AND o.video.isActive = 1"
				+ " ORDER BY o.viewedDate DESC";
		return super.findMany(History.class,sql, username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		// 
		String sql = "SELECT o FROM History o WHERE o.user = ?1 AND o.video = ?2";
		return super.findOne(History.class, sql, userId,videoId);
	}


	@Override
	public History delele(History entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}
}
