package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/toView")
public class ToViewController {

	
	//�򿪸��˲�����ҳ
	@RequestMapping("personlList")
	public String toPersonlIndex(){
		
		return "personlhtml/personlindex";	
	}
}
