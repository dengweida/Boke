package com.web.domain;

import java.util.Date;
import java.util.List;



public class Tieba_content  {

	private int t_id;
	private String t_title;
	private String content;
	
	private Date t_date;
	private String t_image1;
	private String t_image2;
	private String t_image3;
	private String t_resultSnumber;
	private User user;
	private List<Tieba_reply> tieba_reply;
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
	
	public Date getT_date() {
		return t_date;
	}
	public void setT_date(Date t_date) {
		this.t_date = t_date;
	}
	public String getT_image1() {
		return t_image1;
	}
	public void setT_image1(String t_image1) {
		this.t_image1 = t_image1;
	}
	public String getT_resultSnumber() {
		return t_resultSnumber;
	}
	public void setT_resultSnumber(String t_resultSnumber) {
		this.t_resultSnumber = t_resultSnumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getT_image2() {
		return t_image2;
	}
	public void setT_image2(String t_image2) {
		this.t_image2 = t_image2;
	}
	public String getT_image3() {
		return t_image3;
	}
	public void setT_image3(String t_image3) {
		this.t_image3 = t_image3;
	}
	public List<Tieba_reply> getTieba_reply() {
		return tieba_reply;
	}
	public void setTieba_reply(List<Tieba_reply> tieba_reply) {
		this.tieba_reply = tieba_reply;
	}
	
	
	
	
	
	
	
	
}
