package com.web.service;

import java.util.List;

import com.web.domain.Tieba_content;

public interface Tie_ContentService {
	
	//����
     public boolean addContent(Tieba_content tieba_content);
     
    //��ҳ������ʾȫ��  
    public List<Tieba_content> findAllPage();
    
  //�����ҷ���������
    public List<Tieba_content> findMyTiezi(String t_resultSnumber);
    
}
