package com.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.web.domain.Article;
@Repository
public interface AddArticleMapper {
  
	List<Article> addArticle(Article article);
	
}
