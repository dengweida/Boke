package com.web.domain;

import java.util.Date;
import java.util.List;

public class Tieba_reply  {

	private int t_reply_id;
	private String t_reply_content;
	private int t_id;
	private String t_reply_resultSnumber;
	private Date t_reply_date;
	private User user;
	public int getT_reply_id() {
		return t_reply_id;
	}
	public void setT_reply_id(int t_reply_id) {
		this.t_reply_id = t_reply_id;
	}
	public String getT_reply_content() {
		return t_reply_content;
	}
	public void setT_reply_content(String t_reply_content) {
		this.t_reply_content = t_reply_content;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public String getT_reply_resultSnumber() {
		return t_reply_resultSnumber;
	}
	public void setT_reply_resultSnumber(String t_reply_resultSnumber) {
		this.t_reply_resultSnumber = t_reply_resultSnumber;
	}
	public Date getT_reply_date() {
		return t_reply_date;
	}
	public void setT_reply_date(Date t_reply_date) {
		this.t_reply_date = t_reply_date;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	
}
