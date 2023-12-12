package com.jasur.buysell.services;

import com.jasur.buysell.controllers.ProductController;
import com.jasur.buysell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"Iphone 15 pro", "512 memory", 1800, "Tashkent", "Aziz"));
        products.add(new Product(++ID,"Macbook AIR", "M2", 2200, "Tashkent", "Jasur"));
    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id))
                return product;
        };
        return null;
    }
}
