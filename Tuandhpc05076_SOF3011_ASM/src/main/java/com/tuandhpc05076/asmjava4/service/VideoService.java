package com.tuandhpc05076.asmjava4.service;

import java.util.List;

import com.tuandhpc05076.asmjava4.model.Video;



public interface VideoService {
	Video findByID(Integer id);

	Video findByHref(String href);

	List<Video> findAll();

	List<Video> findAll(int pageNumber, int pageSize);

	Video create(Video entity);

	Video update(Video entity);

	Video delete(String href);
	
	List<Video> findByKeyword(String keyword);
	
}
