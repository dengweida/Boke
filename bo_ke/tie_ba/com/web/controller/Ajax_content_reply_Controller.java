package com.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.domain.Tieba_content;
import com.web.service.Tie_ContentService;
@Controller
@RequestMapping("/ajax")
public class Ajax_content_reply_Controller {

	@Resource
	  private Tie_ContentService tie_ContentService;
	
	@RequestMapping("/MyTiezi")
	@ResponseBody
	public  Map<String, Object> toShowMytiezi(String t_resultSnumber){
		System.out.println(t_resultSnumber);
		List<Tieba_content> myTiezi=tie_ContentService.findMyTiezi(t_resultSnumber);
		
		Map<String, Object> map = new HashMap<String, Object>();
	        map.put("replies", myTiezi);
	        
	        return map;
		
	}
	
}
