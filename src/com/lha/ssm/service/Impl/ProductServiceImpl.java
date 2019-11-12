package com.lha.ssm.service.Impl;

import com.lha.ssm.dao.ProductDao;
import com.lha.ssm.entity.Product;
import com.lha.ssm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao pDao;

    @Override
    public List<Product> allProduct() {
        List<Product> list = pDao.allProduct();
        return list;
    }

    @Override
    public int queryCount(Product product) {
        return pDao.queryCount(product);
    }

    @Override
    public List<Product> queryProductPage(Product product, int pageIndex, int pageSize) {
        return pDao.queryProductPage(product,pageIndex,pageSize);
    }

    @Override
    public boolean addProduct(Product product) {
        return pDao.addProduct(product)==1;
    }
}
