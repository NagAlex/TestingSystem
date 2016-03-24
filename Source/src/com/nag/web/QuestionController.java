package com.nag.web;

import java.util.ArrayList;
//import java.util.HashMap;
import java.util.List;
//import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nag.domain.Questions;
import com.nag.service.AnswerService;
import com.nag.service.QuestionService;

@Controller
public class QuestionController {
	
	private final int QUESTIONS_NUM = 5;
	
	private List<Integer> userAnswers = new ArrayList<>();
	
	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private AnswerService answerService;
	
	private List<Questions> questionsToAsk = null;
	
	public List<Questions> getQuestionsToAsk() {
		return questionsToAsk;
	}

	public void setQuestionsToAsk(List<Questions> questionsToAsk) {
		this.questionsToAsk = questionsToAsk;
	}

	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String beginTest() {
		setQuestionsToAsk(questionService.getQuestionsToAsk(QUESTIONS_NUM));
		return "redirect:/begin";
	}
	
	@RequestMapping(value="/begin", method=RequestMethod.GET)
	public String showQuestions(Model model) {
		model.addAttribute("question", questionsToAsk.get(0));
		model.addAttribute("answersList", answerService.getAnswersForQuestion(questionsToAsk.get(0)));
		
		return "questions";
	} 
	
	@RequestMapping(value="/begin",  method=RequestMethod.POST)
	public String nextQuestion(
			@RequestParam("answ") int answerId, Model model) 
	{
		userAnswers.add(answerId);
		if(questionsToAsk.size() > 1) {
			questionsToAsk.remove(0);
			return "redirect:/begin";
		} else {
			model.addAttribute("results", answerService.getResults(userAnswers));
			return "done";
		}	
	}

}
