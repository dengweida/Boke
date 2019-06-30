package com.web.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.web.dao.Tie_ContentMapper;
import com.web.domain.Tieba_content;
import com.web.domain.Tieba_reply;
import com.web.domain.User;
import com.web.service.Tie_ReplyService;
@Service
public class Tie_ReplyServiceImpl implements Tie_ReplyService {

	/*
	 * 帖子详情页——根据id查详情
	 */
	@Resource
	private Tie_ContentMapper tie_ContentMapper;
	public Tieba_content findTieziById(int t_id) {
		Tieba_content tie_content = tie_ContentMapper.findTieziById(t_id);
		return tie_content;
	}
	
	/*
	 * 根据t_id查找帖子回复内容 -正序
	 */
	public List<Tieba_reply> findTieziHuifuByIdZheng(int t_id,int pn) {
   int  totals=	tie_ContentMapper.findTieziCount(t_id);
     if(pn>totals){
    	 pn=(totals/5)*5;;
     }
     if(pn<0){
    	 pn=0;
     }
		List<Tieba_reply> tieba_reply = tie_ContentMapper.findTieziHuifuByIdZheng(t_id,pn);
		
		return tieba_reply;
	}
	
	/*
	 * 根据t_id查找帖子回复内容 -倒序
	 */
	public List<Tieba_reply> findTieziHuifuByIdDao(int t_id,int pn) {
		int  totals=	tie_ContentMapper.findTieziCount(t_id);
	     if(pn>totals){
	    	 pn=(totals/5)*5;;
	     }
	     if(pn<0){
	    	 pn=0;
	     }
		List<Tieba_reply> tieba_reply = tie_ContentMapper.findTieziHuifuByIdDao(t_id,pn);
		return tieba_reply;
	}

	/*
	 * 根据t_id查找帖子回复内容 总数
	 */
	public int findTieziCount(int t_id) {
		int total=tie_ContentMapper.findTieziCount(t_id);
		return total;
	}

	/*
	 * 发表回复
	 */
	public boolean addReply(Tieba_reply tieba_reply) {
		 Date format=new Date();  
		 tieba_reply.setT_reply_date(format);
		int bool=tie_ContentMapper.addReply(tieba_reply);
		if(bool==1){
			System.out.println("发布成功");
			return true;
		}
		else{
			return false;
		
		}
	}

}
