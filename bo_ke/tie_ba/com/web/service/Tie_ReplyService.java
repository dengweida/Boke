package com.web.service;

import java.util.List;

import com.web.domain.Tieba_content;
import com.web.domain.Tieba_reply;
import com.web.domain.User;

public interface Tie_ReplyService {

	 //����t_id����������������
	public Tieba_content findTieziById(int t_id);
	
	
	//����t_id�������ӻظ�����-����
	public List<Tieba_reply> findTieziHuifuByIdZheng(int t_id,int pn);
	//����t_id�������ӻظ�����-����
	public List<Tieba_reply> findTieziHuifuByIdDao(int t_id,int pn);
	//����t_id�������ӻظ�����		
	public int	findTieziCount(int t_id);
	//��ӻظ�
	public boolean addReply(Tieba_reply tieba_reply);
}
