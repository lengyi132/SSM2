package com.lha.ssm.controller;

import com.lha.ssm.entity.PageBean;
import com.lha.ssm.entity.Product;
import com.lha.ssm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductService pService;

    @RequestMapping("/allProduct")
    public String allProduct(@RequestParam(defaultValue = "1") Integer pageIndex, Product product, Model model) {
        //List<Product> products = pService.allProduct();
        int count = pService.queryCount(product);
        int pageSize = 4;
        int pageCount = count % pageSize == 0 ? count / pageSize : count / pageSize + 1;
        if (pageIndex < 1 || pageIndex > pageCount) {
            pageIndex = 1;
        }
        List<Product> products = pService.queryProductPage(product, (pageIndex-1)*pageSize, pageSize);
        PageBean pageBean= new PageBean(pageIndex,pageSize,pageCount,count,products);
        model.addAttribute("pageBean", pageBean);
        return "WEB-INF/pages/manage/productList";
    }

    @RequestMapping("/addProduct")
    public String addProduct(Product product, Model model) {
        boolean b = pService.addProduct(product);
        if (b) {
            model.addAttribute("Msg", "addtrue");
        } else {
            model.addAttribute("Msg", "addfalse");
        }
        return "redirect:allProduct";
    }

    @RequestMapping("/initAddProduct")
    public String initAddProduct() {
        return "WEB-INF/pages/manage/addProduct";
    }

}
