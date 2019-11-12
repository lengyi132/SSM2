package com.lha.ssm.service.Impl;

import com.lha.ssm.dao.CategoryDao;
import com.lha.ssm.entity.Product_Category;
import com.lha.ssm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDao cDao;

    @Override
    public List<Product_Category> queryCategoryByParentId(Integer parentId) {
        return cDao.queryCategoryByParentId(parentId);
    }
}
