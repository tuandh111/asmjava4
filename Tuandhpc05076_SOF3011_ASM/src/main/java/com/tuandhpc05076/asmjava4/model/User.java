package com.tuandhpc05076.asmjava4.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="Users")
/*
 * UserID INT IDENTITY(1,1) PRIMARY KEY, Password NVARCHAR(255) NOT NULL,
 * Username NVARCHAR(50) not null unique, Email NVARCHAR(255) NOT NULL UNIQUE,
 * FullName NVARCHAR(255) NOT NULL, IMG NVARCHAR(255), IsAdmin BIT, IsActive
 * BIT, CreatedAt DATETIME DEFAULT GETDATE()
 */
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userID;
	@Column(name="password")
	private String password;
	@Column(name="username")
	private String username;
	@Column(name="email")
	private String email;
	@Column(name="fullname")
	private String fullname;
	@Column(name="img")
	private String img;
	@Column(name="isAdmin")
	private Boolean isAdmin;
	@Column(name="isActive")
	private Boolean isActive = true;
	@Column(name="createdAt")
	private Date createdAt= new Date();
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Boolean getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	public Boolean getIsActive() {
		return isActive;
	}
	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}
	public Date getCreateAt() {
		return createdAt;
	}
	public void setCreateAt(Date createAt) {
		this.createdAt = createAt;
	}
	
}
