package com.web.domain;

public class Tie_reply_page {
  private int totals;
  private int pageSize;
  private int pageNum; //总页数
  private int pn;   //当前页
  private int nextPage ;//下一页
  private int prePage; //前一页
public int getTotals() {
	return totals;
}
public void setTotals(int totals) {
	this.totals = totals;
}
public int getPageSize() {
	return pageSize;
}
public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
public int getPageNum() {
	return pageNum;
}
public void setPageNum(int pageNum) {
	this.pageNum = pageNum;
}
public int getPn() {
	return pn;
}
public void setPn(int pn) {
	this.pn = pn;
}
public int getNextPage() {
	return nextPage;
}
public void setNextPage(int nextPage) {
	this.nextPage = nextPage;
}
public int getPrePage() {
	return prePage;
}
public void setPrePage(int prePage) {
	this.prePage = prePage;
}
  
  
}
