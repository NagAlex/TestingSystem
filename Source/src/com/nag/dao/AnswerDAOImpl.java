package com.nag.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nag.domain.Answers;
import com.nag.domain.Questions;

@Repository
@Transactional(readOnly=true)
public class AnswerDAOImpl implements AnswerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Answers getAnswer(int id) {
		return sessionFactory.getCurrentSession().get(Answers.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Answers> getAnswersForQuestion(Questions question) {
		return sessionFactory.getCurrentSession()
				.createQuery("from Answers where question = :question")
				.setInteger("question", question.getId())
				.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Answers> getAllAnswers() {
		return sessionFactory.getCurrentSession().createCriteria(Answers.class).list();
	}

}
