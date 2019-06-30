package com.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.web.domain.Tieba_content;
import com.web.domain.Tieba_reply;
import com.web.domain.User;
@Repository
public interface Tie_ContentMapper {
	public  int addContent(Tieba_content tieba_content);
	
	public List<Tieba_content> findAllPage();
	
	
	//根据t_id查找帖子详情
		public Tieba_content findTieziById(int t_id);
		
	//根据t_id查找帖子回复内容-正序
		public List<Tieba_reply> findTieziHuifuByIdZheng(int t_id,int pn);
	//根据t_id查找帖子回复内容-倒序
		public List<Tieba_reply> findTieziHuifuByIdDao(int t_id,int pn);
	//根据t_id查找帖子回复总数		
	 public int	findTieziCount(int t_id);
	//添加回复
	public int addReply(Tieba_reply tieba_reply);
	
	//查找我发布的帖子
    public List<Tieba_content> findMyTiezi(String t_resultSnumber);
}
