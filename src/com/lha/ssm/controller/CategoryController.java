package com.lha.ssm.controller;

import com.lha.ssm.entity.Product_Category;
import com.lha.ssm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/queryCategory")
    @ResponseBody
    public List<Product_Category> queryCategory(Integer parentId){
        return categoryService.queryCategoryByParentId(parentId);
    }
}
