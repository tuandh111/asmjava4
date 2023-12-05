package com.tuandhpc05076.asmjava4.service;

import java.util.List;

import com.tuandhpc05076.asmjava4.model.User;

public interface UserService {
	User findByID(Integer id);

	User findByEmail(String email);

	User findByUsername(String username);

	User login(String email, String password);

	User resetPassword(String email);

	List<User> findAll();

	List<User> findAll(int pageNumber, int pageSize);

	User create(String password, String username, String email,String fullname, Boolean role);

	User update(User entity);

	User delete(String username);

	List<Object[]> findUsersLikedByVideoHref(String href);
}
