package com.tuandhpc05076.asmjava4.dao;


import java.util.List;
import java.util.Map;

import com.tuandhpc05076.asmjava4.utils.JPAUtils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.persistence.TypedQuery;


public class AbstractDao<T> {
	public static final EntityManager entityManager = JPAUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		entityManager.close();
		super.finalize();
	}

	public T findById(Class<T> clazz, Integer id) {
		return entityManager.find(clazz, id);
	}

	public List<T> findAll(Class<T> clazz, boolean existIsActive) {
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		//Dung StringBuilder de noi chuoi
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		if (existIsActive == true) {
			sql.append(" WHERE isActive = true");
		}
		TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
		return query.getResultList();
		//Example SELECT o From User o WHERE isActive = 1?
	}

	public List<T> findAll(Class<T> clazz,  int pageNumber, int pageSize) {
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
		//Vi query index tu 0 nen phai tru 1 ( trang 1)
		query.setFirstResult((pageNumber - 1) * pageSize);
		
		//Vi tri bat dau
		query.setMaxResults(pageSize);
		//So luong thuc the toi da - Theo Slide
		return query.getResultList();
		/*
		 * 5 phan tu : Muon 1 trang co 2 phan tu => Tong so trang : 3 trang 1: 2pt trang
		 * 2: 2pt trang 3: 1pt
		 */
	}
//	
//	public List<T> findAll(Class<T> clazz, boolean existIsActive, String genre, int pageNumber, int pageSize) {
//	    String entityName = clazz.getSimpleName();
//	    StringBuilder sql = new StringBuilder();
//	    sql.append("SELECT o FROM ").append(entityName).append(" o");
//	    
//	    // Add condition for Active field
//	    if (existIsActive) {
//	        sql.append(" WHERE Active = 1");
//	    }
//
//	    // Add condition for genre
//	    if (genre != null && !genre.isEmpty()) {
//	        if (existIsActive) {
//	            sql.append(" AND");
//	        } else {
//	            sql.append(" WHERE");
//	        }
//	        sql.append(" o.genre = :genre");
//	    }
//
//	    TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
//
//	    // Set parameters
//	    if (genre != null && !genre.isEmpty()) {
//	        query.setParameter("genre", genre);
//	    }
//
//	    // Set pagination
//	    query.setFirstResult((pageNumber - 1) * pageSize);
//	    query.setMaxResults(pageSize);
//
//	    return query.getResultList();
//	}

	// Select o from user o where o.username = ?0 and o.password = ?1
	public T findOne(Class<T> clazz, String sql, Object... params) {
		//Truyen dung theo thu tu Params de Mapping dung
		TypedQuery<T> query = entityManager.createQuery(sql, clazz);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i+1, params[i]);

		}
		List<T> result = query.getResultList();
		//GetResultList tranh truong hop Null
		if (result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}
	
	public List<T> findMany(Class<T> clazz, String sql, Object... params) {

		TypedQuery<T> query = entityManager.createQuery(sql, clazz);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i+1, params[i]);

		}
		return query.getResultList();
	}
	
	public List<Object[]> findManyByNativeQuerry(String sql, Object... params) {
		//Dung NativeQuery
		Query query = entityManager.createNativeQuery(sql);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i+1, params[i]);
		}
		return query.getResultList();
	}
	public T create (T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(entity);
			entityManager.getTransaction().commit();
			System.out.println("Added Success!!");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Can't add entity!!");
			throw new RuntimeException(e);
		}
	}
	public T update (T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.merge(entity);
			entityManager.getTransaction().commit();
			System.out.println("Updated success!!");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Can't updated entity!!");
			throw new RuntimeException(e);
		}
	}
	
	public T delete (T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.remove(entity);
			entityManager.getTransaction().commit();
			System.out.println("Enity has been deleted!!");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Can't delete entity!!");
			throw new RuntimeException(e);
		}
	}
	public List<Object[]> callStore(String namedStore, Map<String, Object> params){
		//ten Store - list Param - key la tham so truyen vao trong cau SP
		// Value la gia tri truyen vao trong dieu kien where
		StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery(namedStore);
		params.forEach((key,value) -> query.setParameter(key, value));
		//duyet het cac phan tu
		return ((List<Object[]>) query.getResultList());
	}
	public List<T> callNamedQuery(String namedQuery, Map<String, Object> params, Class<T> resultType) {
	    // Tên NamedQuery - danh sách tham số - key là tên tham số trong NamedQuery
	    // và giá trị là giá trị truyền vào trong điều kiện WHERE
	    TypedQuery<T> query = entityManager.createNamedQuery(namedQuery,resultType); // Thay entityType bằng kiểu dữ liệu của đối tượng bạn đang truy vấn

	    if (params != null) {
	        params.forEach((key, value) -> query.setParameter(key, value));
	    }

	    return query.getResultList();
	}

}
