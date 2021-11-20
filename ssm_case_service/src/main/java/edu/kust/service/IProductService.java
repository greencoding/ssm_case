package edu.kust.service;

import edu.kust.domain.Product;

import java.util.List;

public interface IProductService {

    List<Product> findAll();

    List<Product> findAll(int page,int size);

    void save(Product product);

    Product findOne(Integer id);

    List<Product> findBycity(Integer id,String cityName);

    void updateProduct(Product product);
}
