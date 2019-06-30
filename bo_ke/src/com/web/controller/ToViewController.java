package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/toView")
public class ToViewController {

	
	//打开个人博客主页
	@RequestMapping("personlList")
	public String toPersonlIndex(){
		
		return "personlhtml/personlindex";	
	}
}
