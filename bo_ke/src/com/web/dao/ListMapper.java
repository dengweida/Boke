package com.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.web.domain.Article;
@Repository
public interface ListMapper {
  
	List<Article> findAll();
	List<Article> getArticleList(int num) ;
	public int getArticlesCounts();
	
	List<Article> findArticleById(int id);
}
