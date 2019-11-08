package com.lha.ssm.entity;

import java.util.List;

public class PageBean {
	private int pageIndex;
	private int pageSize;
	private int pageCount;
	private int count;
	private List data;
	
	public PageBean() {
		// TODO Auto-generated constructor stub
	}
	
	public PageBean(int pageIndex, int pageSize, int pageCount, int count,
			List data) {
		super();
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.pageCount = pageCount;
		this.count = count;
		this.data = data;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	
}
