package com.lha.ssm.service;

import com.lha.ssm.entity.Product;

import java.util.List;

public interface ProductService {

    public List<Product> allProduct();

    public int queryCount(Product product) ;

    public List<Product> queryProductPage(Product product, int pageIndex, int pageSize);

    public boolean addProduct(Product product) ;
}
