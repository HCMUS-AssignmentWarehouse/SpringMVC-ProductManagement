package com.iceteaviet.service.product;

import com.iceteaviet.model.Product;
import com.iceteaviet.service.BaseService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Genius Doan on 6/6/2017.
 */
@Service
public class ProductServiceImpl extends BaseService<Product, Integer> implements ProductService {

    /*
    @Autowired
    ProductRepository productRepository;
    */

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    public void save(Product entity) {
        try {
            getSession().beginTransaction();
            getSession().save(entity);
            getSession().getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (getSession().getTransaction().isActive())
                getSession().getTransaction().rollback();
        }
    }

    public void save(List<Product> listEntity) {
        return;
    }

    public void update(Integer id, Product newEntity) {
        try {
            getSession().beginTransaction();
            getSession().update(newEntity);
            getSession().getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (getSession().getTransaction().isActive())
                getSession().getTransaction().rollback();
        }
    }

    public Product findOne(Integer id) {
        Product product = null;
        try {
            getSession().beginTransaction();
            product = getSession().get(Product.class, id);
            getSession().getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (getSession().getTransaction().isActive())
                getSession().getTransaction().rollback();
        }
        return product;
    }

    public List<Product> findAll() {
        List<Product> productList = null;
        try {
            getSession().beginTransaction();
            productList = getSession().createCriteria(Product.class).list();
            getSession().getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (getSession().getTransaction().isActive())
                getSession().getTransaction().rollback();
        }
        return productList;
    }

    public List<Product> findAll(List<Integer> listId) {
        return null;
    }

    public long count() {
        return findAll().size();
    }

    public boolean exists(Integer integer) {
        return false;
    }

    public void delete(Integer id) {
        try {
            getSession().beginTransaction();
            Product product = getSession().get(Product.class, id);
            if (product != null) {
                getSession().delete(product);
            }
            getSession().getTransaction().commit();

        } catch (Exception e) {
            e.printStackTrace();
            if (getSession().getTransaction().isActive())
                getSession().getTransaction().rollback();
        }
    }

    public void delete(Product entity) {

    }

    public void delete(List<Product> listEntity) {

    }

    public void deleteAll() {

    }
}