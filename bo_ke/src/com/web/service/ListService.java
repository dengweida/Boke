package com.web.service;

import java.util.List;

import com.web.domain.Article;

public interface ListService {
    List<Article> findAll();
    List<Article> getArticleList(int num);
    public int getArticlesCounts();
    
    List<Article> findArticleById(int id);
}
