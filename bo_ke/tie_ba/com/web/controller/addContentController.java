package com.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.oscache.util.StringUtil;
import com.web.domain.Tieba_content;
import com.web.service.Tie_ContentService;
import com.web.utils.testImage;

@Controller
@RequestMapping("/addContent")
public class addContentController {

	
	@Resource
	private Tie_ContentService tie_ContentService;
	@RequestMapping("toAddContent")
	public String addContent(Model model,Tieba_content tieba_content){
	    String str=	testImage.getImag(tieba_content.getContent());
	    if(!StringUtil.isEmpty(str)){
	    String[] m =str.split(",");
	    tieba_content.setT_image1(m[0]);
	    if(m.length==2){
	    if(!StringUtil.isEmpty(m[1])){
	    	tieba_content.setT_image2(m[1]);
	    }
	    }
	    if(m.length==3){
	    	if(!StringUtil.isEmpty(m[1])){
		    	tieba_content.setT_image2(m[1]);
		    }
	    if(!StringUtil.isEmpty(m[2])){
	    	tieba_content.setT_image3(m[2]);
	    }
	    }
	    }
	    Date format=new Date();  
		tieba_content.setT_date(format);
	    boolean bool = tie_ContentService.addContent(tieba_content);
		if(bool==true)
		{
		return "redirect:../tie_ba/toPage.action";
		}
		else{
			return "tie_ba/error";
		}
}
	
	
	
	
}
