package com.web.controller;

import javax.annotation.Resource;
import javax.enterprise.inject.Model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.domain.Tieba_reply;
import com.web.service.Tie_ReplyService;

@Controller
@RequestMapping("/addReply")
public class addReplyController {
    @Resource
    private Tie_ReplyService tie_ReplyService;
	@RequestMapping("toAddReply")
	public String addReply(Tieba_reply tieba_reply){
		boolean bool=tie_ReplyService.addReply(tieba_reply);
		if(bool==true)
		{
			return "redirect:../tie_ba/toListDao.action?t_id="+tieba_reply.getT_id()+"#paixu";
		}
		else{
			return "tie_ba/error";
		}
	}
}
