package com.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.domain.Article;
import com.web.service.AddArticleService;
import com.web.service.ListService;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@Resource
	private AddArticleService addArticleService;
	//≤‚ ‘∑¢≤ºŒƒ’¬
		@RequestMapping("addArticleView")
		public String toTestAddArticleView(){
			
			return "test";	
		}
		
		
		@RequestMapping("addArticle")
		public String toTestAddArticle(Article article){
			addArticleService.addArticle(article);
			return "show";
	
}

		
}