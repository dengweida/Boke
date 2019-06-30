package com.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.web.dao.Tie_ContentMapper;
import com.web.domain.Tieba_content;
import com.web.service.Tie_ContentService;
@Service
public class Tie_ContentServiceImpl implements Tie_ContentService {

	@Resource
	private Tie_ContentMapper tie_ContentMapper;
	
	public boolean addContent(Tieba_content tieba_content) {
	int bool=tie_ContentMapper.addContent(tieba_content);
	if(bool==1){
		System.out.println("发布成功");
		return true;
	}
	else{
		return false;
	
	}
	}
	
	
	
	
	
	
	
	public List<Tieba_content> findAllPage() {
		List<Tieba_content> allTiezi = tie_ContentMapper.findAllPage();
		
		return allTiezi;
	}







	//查找我发布的帖子
	public List<Tieba_content> findMyTiezi(String t_resultSnumber) {
		List<Tieba_content> myTiezi =tie_ContentMapper.findMyTiezi(t_resultSnumber);
		return myTiezi;
	}
}
