package com.lha.ssm.dao;

import com.lha.ssm.entity.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductDao {
    public List<Product> allProduct();

    public List<Product> queryProductPage(@Param("product")Product product, @Param("pageIndex")int pageIndex, @Param("pageSize")int pageSize);

    public int queryCount(Product product);

    public int addProduct(Product product);

    public int deleteProduct(int id);

    public int updateProduct(Product product);
}
