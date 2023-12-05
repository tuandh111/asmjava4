package com.tuandhpc05076.asmjava4.dao.implement;

import java.util.List;

import com.tuandhpc05076.asmjava4.dao.AbstractDao;
import com.tuandhpc05076.asmjava4.dao.VideoDAO;
import com.tuandhpc05076.asmjava4.model.Video;



public class VideoDaoImpl extends AbstractDao<Video> implements VideoDAO{

	@Override
	public Video findByID(Integer id) {
		// 
		return super.findById(Video.class, id);
	}

	
	@Override
	public Video findByHref(String description) {
		// 
		String sql = "SELECT o FROM Video o WHERE o.description = ?1";
		return super.findOne(Video.class, sql, description);
	}
	

	@Override
	public List<Video> findAll() {
		// 
		return super.findAll(Video.class, true);
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		// Write Comment
		return super.findAll(Video.class, pageNumber, pageSize);
	}
	
	@Override
	public List<Video> findByKeyword(String keyword)	{
		String sql= "SELECT o FROM Video o WHERE o.title LIKE ?1";
		return super.findMany(Video.class,sql,  "%"+keyword+ "%");
	}


}
