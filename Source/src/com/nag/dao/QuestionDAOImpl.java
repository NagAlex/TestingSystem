package com.nag.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nag.domain.Questions;

@Repository
@Transactional(readOnly=true)
public class QuestionDAOImpl implements QuestionDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	/*public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}*/

	@Override
	public Questions getQuestion(int id) {
		return sessionFactory.getCurrentSession().get(Questions.class,  id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Questions> getAllQuestions() {
		return sessionFactory.getCurrentSession().createCriteria(Questions.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<Integer> getQuestionsIds() {
		return sessionFactory.getCurrentSession().createQuery("select id from Questions").list();
	}
}
