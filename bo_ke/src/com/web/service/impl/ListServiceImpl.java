package com.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.web.dao.ListMapper;
import com.web.domain.Article;
import com.web.service.ListService;

@Service
public class ListServiceImpl implements ListService {

	@Resource
	private ListMapper listMapper;

	public List<Article> findAll() {
		List<Article> list = listMapper.findAll();
		return list;
	}

	
	public int getArticlesCounts() {
	int counts =	listMapper.getArticlesCounts();
		return counts;
	}


	
	public List<Article> getArticleList(int num) {
		List<Article> list =listMapper.getArticleList(num) ;
		return list;
	}


	//查看文章具体内容
	public List<Article> findArticleById(int id) {
		List<Article> list =listMapper.findArticleById(id) ;
		return list;
	}

}
