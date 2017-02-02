package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.KidsSpecial;
@Repository
public class KidsSpecialDAOImpl implements KidsSpecialDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addKidsSpecial(KidsSpecial kidsSpecial) {
		//sessionFactory.getCurrentSession().saveOrUpdate(kidsSpecial);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(kidsSpecial);
	}

	public void updateKidsSpecial(KidsSpecial kidsSpecial) {
		// TODO Auto-generated method stub
		
	}

	public List<KidsSpecial> listKidsSpecial() {
		// TODO Auto-generated method stub
		return null;
	}

	public KidsSpecial getKidsSpecialById(int kidsSpecialId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeKidsSpecial(int kidsSpecialId) {
		// TODO Auto-generated method stub
		
	}

}
