package com.nag.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nag.dao.AnswerDAO;
import com.nag.domain.Answers;
import com.nag.domain.Questions;

@Service
public class AnswerService {

	@Autowired
	private AnswerDAO answerDAO;
	
	public Answers getAnswer(int id) {
		return answerDAO.getAnswer(id);
	} 
	
	public List<Answers> getAllAnswers() {
		return answerDAO.getAllAnswers();
	}
	
	public List<Answers> getAnswersForQuestion(Questions question) {
		return answerDAO.getAnswersForQuestion(question);
	}
	
	public double getResults(List<Integer> userAnswers){
		double rightAnswer = 0;
		double countAnswer = userAnswers.size();
		for(Integer i: userAnswers) {
			Answers answer = getAnswer(i);
			if(answer.isRightAnswer()) rightAnswer++;
		}
		System.out.println("Number of questions: " + countAnswer);
		System.out.println("Right answers: " + rightAnswer);
		return (rightAnswer / countAnswer) * 100;
	}
}