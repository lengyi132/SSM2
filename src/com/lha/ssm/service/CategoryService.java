package com.lha.ssm.service;

import com.lha.ssm.entity.Product_Category;

import java.util.List;

public interface CategoryService {
    public List<Product_Category> queryCategoryByParentId(Integer parentId);
}
