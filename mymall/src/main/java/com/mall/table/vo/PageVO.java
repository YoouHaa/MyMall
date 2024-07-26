package com.mall.table.vo;

public class PageVO {

	private int total;
	private int countPerPage=10;
	private int currentPage =1;
	private int startPage;
	private int endPage;
	
	
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartPage() {
		return currentPage/countPerPage+1;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return total/countPerPage+1;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
	
	
}
