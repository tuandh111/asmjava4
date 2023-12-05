package com.tuandhpc05076.asmjava4.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="Video")
public class Video {
	@Id
	@Column(name = "videoid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int videoID;
	
	@Column(name = "title")
	private String title;
	
	
	@Column(name = "poster")
	private String poster;
	
	@Column(name = "views")
	private Integer views;
	
	@Column(name = "description")
	private String description;
	
	@Column(name ="Genre")
	private  String genre;
	
	@Column(name = "isActive")
	private Boolean isActive;
	
	@Column(name = "CreatedAt")
	private Date date = new Date() ;

	public int getId() {
		return videoID;
	}

	public void setId(int VideoID) {
		this.videoID = VideoID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Video [id=" + videoID + ", title=" + title + ", poster=" + poster + ", views=" + views + ", description="
				+ description + ", genre=" + genre + ", isActive=" + isActive + ", date=" + date + "]";
	}
	
	
}
