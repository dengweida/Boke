package com.web.service;

import java.util.List;

import com.web.domain.Tieba_content;
import com.web.domain.Tieba_reply;
import com.web.domain.User;

public interface Tie_ReplyService {

	 //根据t_id查找帖子详情内容
	public Tieba_content findTieziById(int t_id);
	
	
	//根据t_id查找帖子回复内容-正序
	public List<Tieba_reply> findTieziHuifuByIdZheng(int t_id,int pn);
	//根据t_id查找帖子回复内容-倒序
	public List<Tieba_reply> findTieziHuifuByIdDao(int t_id,int pn);
	//根据t_id查找帖子回复总数		
	public int	findTieziCount(int t_id);
	//添加回复
	public boolean addReply(Tieba_reply tieba_reply);
}
