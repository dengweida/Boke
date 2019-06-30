package com.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.web.dao.AddArticleMapper;
import com.web.dao.ListMapper;
import com.web.domain.Article;
import com.web.service.AddArticleService;
@Service
public class AddArticleServiceImpl implements AddArticleService {

	@Resource
	private AddArticleMapper addArticleMapper;
	public List<Article> addArticle(Article article) {
		 addArticleMapper.addArticle(article);
		return null;
	}

}
