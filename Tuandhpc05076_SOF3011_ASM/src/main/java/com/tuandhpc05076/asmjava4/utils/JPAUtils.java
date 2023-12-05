package com.tuandhpc05076.asmjava4.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAUtils {

	private static EntityManagerFactory factory;

	public static EntityManager getEntityManager() {
		if (factory == null || !factory.isOpen()) {
			factory = Persistence.createEntityManagerFactory("Tuandhpc05076_SOF3011_ASM");
			
		}
		return factory.createEntityManager();
	}

	public static void shutdown() {
		if (factory != null && factory.isOpen()) {
			factory.close();
		}
		factory = null;
	}

}
