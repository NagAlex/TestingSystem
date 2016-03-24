package com.nag.dao;

import java.util.List;

import com.nag.domain.Answers;
import com.nag.domain.Questions;

public interface AnswerDAO {

	public Answers getAnswer(int id);
	
	public List<Answers> getAnswersForQuestion(Questions question);
	
	public List<Answers> getAllAnswers();
}
