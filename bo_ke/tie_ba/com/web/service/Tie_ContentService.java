package com.web.service;

import java.util.List;

import com.web.domain.Tieba_content;

public interface Tie_ContentService {
	
	//发帖
     public boolean addContent(Tieba_content tieba_content);
     
    //首页帖子显示全部  
    public List<Tieba_content> findAllPage();
    
  //查找我发布的帖子
    public List<Tieba_content> findMyTiezi(String t_resultSnumber);
    
}
