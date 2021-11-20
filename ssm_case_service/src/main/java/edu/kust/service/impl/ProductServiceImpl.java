package edu.kust.service.impl;

import com.github.pagehelper.PageHelper;
import edu.kust.dao.IProductDao;
import edu.kust.domain.Product;
import edu.kust.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("productService")
public class ProductServiceImpl implements IProductService {


    @Autowired
    private IProductDao productDao;

    @Override
    public List<Product> findAll() {
        return productDao.findAll();
    }

    @Override
    public List<Product> findAll(int page,int size){
        PageHelper.startPage(page,size);
        return productDao.findAll();
    }

    @Override
    public void save(Product product) {
        productDao.save(product);
    }

    @Override
    public Product findOne(Integer id) {
        return productDao.findById(id);
    }

    @Override
    public List<Product> findBycity(Integer id,String cityName) {
        Product product = findOne(id);
        String cityName1 = product.getCityName();
        return productDao.findBycity(cityName1);
    }

    @Override
    public void updateProduct(Product product) {
        productDao.updateProduct(product);
    }
}
