package com.nag.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nag.dao.QuestionDAO;
import com.nag.domain.Questions;

@Service
public class QuestionService {
	
	@Autowired
	private QuestionDAO questionDAO;
	
	public Questions getQuestion(int id) {
		return questionDAO.getQuestion(id);
	}
	
	public List<Questions> getAllQuestions() {
		return questionDAO.getAllQuestions();
	}
	
	public int getQuestionsCount() {
		return getAllQuestions().size();
	}
	
	public List<Questions> getQuestionsToAsk(int numOfQuestions) {
		List<Questions> questionList = new ArrayList<>();
		List<Integer> questions = new ArrayList<>();
		List<Integer> questionsId = questionDAO.getQuestionsIds();
		int countAll = questionsId.size();			//getting number of all questions
		int count = 0;
		
		//Can be optimized: use just questions ids (put them in list) and fetch appropriate question when it needs in controller
		//I think it's not useful because there will be many queries (Sessions) to Database 
		
		while(count < numOfQuestions) {
			int num = (int)(Math.random() * countAll);
			System.out.println("Num=" + num);
			Integer id = questionsId.get(num);
			
			System.out.print("Id=" + id);
			
			if((questions.contains(id)) || (id == null)) { 
				System.out.println("   already exists");
				continue;
			}
			else {
				questions.add(id);
				count++;
				System.out.println("\nId=" + id + " added ");
			}
			for(Integer i: questions) {
				if(i != null) System.out.print(i + " ");
			}
			System.out.println();

		}
		for(Integer i: questions) 
			questionList.add(getQuestion(i));

		return questionList;
	}
	
}
