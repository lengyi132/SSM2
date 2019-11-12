package com.lha.ssm.dao;

import com.lha.ssm.entity.Product_Category;

import java.util.List;

public interface CategoryDao {

    public List<Product_Category> queryCategoryByType(int type);

    public List<Product_Category> queryAllByType();

    public int addCategory(Product_Category cate);

    public int updateCategory(Product_Category cate);

    public int deleteCategory(Integer id);

    public Product_Category queryCategoryById(Integer id);

    public List<Product_Category> queryCategoryByParentId(Integer parentId);
}
