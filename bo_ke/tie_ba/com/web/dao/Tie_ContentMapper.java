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
	
	
	//����t_id������������
		public Tieba_content findTieziById(int t_id);
		
	//����t_id�������ӻظ�����-����
		public List<Tieba_reply> findTieziHuifuByIdZheng(int t_id,int pn);
	//����t_id�������ӻظ�����-����
		public List<Tieba_reply> findTieziHuifuByIdDao(int t_id,int pn);
	//����t_id�������ӻظ�����		
	 public int	findTieziCount(int t_id);
	//��ӻظ�
	public int addReply(Tieba_reply tieba_reply);
	
	//�����ҷ���������
    public List<Tieba_content> findMyTiezi(String t_resultSnumber);
}
