package com.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.domain.Article;
import com.web.service.ListService;

@Controller
@RequestMapping("/list")
public class ListController {
	
	@Resource
	private ListService listService;
	
	//显示主页文章列表
	@RequestMapping("list")
	public String showList(Model model){
	List<Article> list = listService.findAll();
		model.addAttribute("list", list);	
		int pageNum =1;
		model.addAttribute("nextPage", pageNum);
		return "index";
	}
	
	//显示滚动下拉页面文章列表
	 @RequestMapping("/page/{num}")
	    public String page(Model model, @PathVariable int num) {
	        //获取点击量和评论量
	        //List<Count> countList = countService.getCountList();
	        //获取文章
	       List<Article> list = listService.getArticleList(num);
	        model.addAttribute("list", list);
	       
	        //总数
	        int count = listService.getArticlesCounts();
	       
	        //总页数
	        int pageNum = count / 1;
	        model.addAttribute("pageNum", pageNum);
	        if (pageNum > num) {
	            model.addAttribute("nextPage", num + 1);
	        }
	        //今日推荐
	       // List<Article> top2 = articleService.getTopArticleList("2");
	        //model.addAttribute("now", top2.get(0));
	        return "index";
	    }
	 
	 //查看具体内容
	 @RequestMapping("/article/{id}")
	 public String findArticleById(Model model,@PathVariable int id){
		 
		 List<Article> list =listService.findArticleById(id);
		 System.out.println(list);
		 model.addAttribute("list", list);
		return "show"; 
	 }
	
}
