package com.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.opensymphony.oscache.util.StringUtil;
import com.web.domain.Tieba_content;
import com.web.domain.Tieba_reply;
import com.web.service.Tie_ContentService;
import com.web.service.Tie_ReplyService;

@Controller
@RequestMapping("/tie_ba")
public class toIndexController {
        
	@Resource
  private Tie_ReplyService tie_ReplyService;
	//调转帖子详情页-正序
	@RequestMapping("toListZheng")
	public String showListZheng(Model model,@RequestParam(required = true,value = "t_id")int t_id,@RequestParam(required = false,defaultValue = "1",value = "pn")int pn ){
		//查询帖子详情内容
		Tieba_content tie_show = tie_ReplyService.findTieziById(t_id);
		model.addAttribute("tie_show", tie_show);
		model.addAttribute("pn", pn);
		List<Tieba_reply> tieba_reply =tie_ReplyService.findTieziHuifuByIdZheng(t_id,pn*5-5);
		model.addAttribute("tieba_reply", tieba_reply);
		int totalCounts= tie_ReplyService.findTieziCount(t_id);
		
		model.addAttribute("totalCounts", totalCounts);
		return "tie_ba/showtieba";
}
	
	

	  
		//调转帖子详情页-倒序
		@RequestMapping("toListDao")
		public String showListDao(Model model,@RequestParam(required = true,value = "t_id")int t_id,@RequestParam(required = false,defaultValue = "1",value = "pn")int pn ){
			//查询帖子详情内容
			Tieba_content tie_show = tie_ReplyService.findTieziById(t_id);
			model.addAttribute("tie_show", tie_show);
			model.addAttribute("pn", pn);
			List<Tieba_reply> tieba_reply =tie_ReplyService.findTieziHuifuByIdDao(t_id,pn*5-5);
			model.addAttribute("tieba_reply", tieba_reply);
			int totalCounts= tie_ReplyService.findTieziCount(t_id);
			
			model.addAttribute("totalCounts", totalCounts);
			return "tie_ba/showtieba";
	}
	
	
	//跳转个人贴吧主页
	@RequestMapping("toPersonl")
	public String showPersonl(Model model,String t_resultSnumber){
		model.addAttribute("t_resultSnumber", t_resultSnumber);
		
		return "tie_ba/personlindex";
}
	
	
	
	
	@Resource
	  private Tie_ContentService tie_ContentService;
	//分页插件--贴吧主页
	@RequestMapping("/toPage")
	public String toDeptList(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn ) {
		PageHelper.startPage(pn, 10);
		List<Tieba_content> deptList = tie_ContentService.findAllPage();
		PageInfo<Tieba_content>  p = new PageInfo<Tieba_content>(deptList);
		model.addAttribute("allTie", deptList);
		model.addAttribute("page", p);
		return "tie_ba/index2";
	}
	
	
	
	
	
}
