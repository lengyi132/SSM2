package com.lha.ssm.entity;

import java.util.ArrayList;
import java.util.List;

public class Product_Category {
	private int id;
	private String name;
	private int parentId;
	private int type;
	private String iconClass;

	private List<Product_Category> childCategory = new ArrayList<Product_Category>();

	public Product_Category() {
		super();
	}

	public Product_Category(String name, int parentId, int type,
			String iconClass, List<Product_Category> childCategory) {
		super();
		this.name = name;
		this.parentId = parentId;
		this.type = type;
		this.iconClass = iconClass;
		this.childCategory = childCategory;
	}

	public Product_Category(int id, String name, int parentId, int type,
			String iconClass) {
		super();
		this.id = id;
		this.name = name;
		this.parentId = parentId;
		this.type = type;
		this.iconClass = iconClass;
	}

	public List<Product_Category> getChildCategory() {
		return childCategory;
	}

	public void setChildCategory(List<Product_Category> childCategory) {
		this.childCategory = childCategory;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getIconClass() {
		return iconClass;
	}

	public void setIconClass(String iconClass) {
		this.iconClass = iconClass;
	}

}
