package com.nag.dao;

import java.util.List;
import com.nag.domain.Questions;

public interface QuestionDAO {
	
	public Questions getQuestion(int id);
	
	public List<Questions> getAllQuestions();
	
	public List<Integer> getQuestionsIds();

}
