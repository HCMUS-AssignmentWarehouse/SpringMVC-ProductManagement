package com.iceteaviet.service.product;

import com.iceteaviet.model.Product;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by Genius Doan on 6/6/2017.
 */
public class ProductTest {
    ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
    ProductService productService = (ProductServiceImpl) context.getBean("productService");

    @Test
    public void saveTest() {
        Product product = new Product();
        try {
            product.setName("Product A");
            product.setDescription("A is a special product");
            product.setType(Product.TYPE_FOOD);
            product.setQuantity(0);
            product.setPrice(10000);
            product.setExpiryDate("22/12/2017");
            productService.save(product);
        } catch (Exception ex) {
            ex.printStackTrace();
            Assert.fail(ex.getMessage());
        }
    }

    @Test
    public void getTest() {
        try {
            Product product = productService.findOne(1); //Id auto incremental
            Assert.assertNotNull(product);
        } catch (Exception ex) {
            Assert.fail(ex.getMessage());
        }
    }

    @Test
    public void updateTest() {
        try {
            productService.update(2, new Product(2, "Product B", Product.TYPE_FURNITURE, "Nothing special", 3, 25000, "16/02/2018"));
        } catch (Exception ex) {
            ex.printStackTrace();
            Assert.fail(ex.getMessage());
        }
    }

    @Test
    public void deleteTest() {
        try {
            productService.delete(1);
        } catch (Exception ex) {
            ex.printStackTrace();
            Assert.fail(ex.getMessage());
        }
    }

    @Test
    public void TestGetAllBook() {

        try {
            List<Product> bookList = productService.findAll();
            Assert.assertNotNull(bookList);
            Assert.assertNotEquals(0, bookList.size());
        } catch (Exception ex) {
            ex.printStackTrace();
            Assert.fail(ex.getMessage());
        }
    }
}
