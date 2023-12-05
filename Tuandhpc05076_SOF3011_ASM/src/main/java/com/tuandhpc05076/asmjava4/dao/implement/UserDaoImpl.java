package com.tuandhpc05076.asmjava4.dao.implement;

import java.util.List;
import java.util.Map;

import com.tuandhpc05076.asmjava4.constanst.NamedStored;
import com.tuandhpc05076.asmjava4.dao.AbstractDao;
import com.tuandhpc05076.asmjava4.dao.UserDAO;
import com.tuandhpc05076.asmjava4.model.User;


public class UserDaoImpl extends AbstractDao<User> implements UserDAO {
	@Override
	public User findByID(Integer id) {
		// Ke thua tu UserDAO
		return super.findById(User.class, id);
	}

	@Override
	public User findByEmail(String email) {
		// Su dung cau lenh SQL
		String sql = "SELECT  o FROM User o WHERE o.email = ?1";
		return super.findOne(User.class, sql, email);
	}

	@Override
	public User findByUsername(String username) {
		String sql = "SELECT  o FROM User o WHERE o.username = ?1";
		return super.findOne(User.class, sql, username);
	}

	@Override
	public User findByUsernameAndPassword(String email, String password) {
		String sql = "SELECT  o FROM User o WHERE o.username = ?1 AND o.password = ?2";
		return super.findOne(User.class, sql, email, password);
	}

	@Override
	public List<User> findAll() {
		// Tim nhung User dang hoat dong
		return super.findAll(User.class, true);
	}

	@Override
	public List<User> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return super.findAll(User.class,  pageNumber, pageSize);
	}

	@Override
	public List<Object[]> findUsersLikedByVideoHref(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return super.callStore(NamedStored.FIND_USER_BY_HREF, params);
	}

//	@Override
//	public User create(User entity) {
//		return entity;
//	}
//
//	@Override
//	public User update(User entity) {
//		return entity;
//	}
//
//	@Override
//	public User delete(User entity) {
//		return entity;
//	}

}
