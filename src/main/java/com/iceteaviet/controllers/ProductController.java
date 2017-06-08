package com.iceteaviet.controllers;

import com.iceteaviet.model.Product;
import com.iceteaviet.service.login.MyUserDetailsService;
import com.iceteaviet.service.product.ProductService;
import com.iceteaviet.service.product.ProductServiceImpl;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Genius Doan on 03/06/2017.
 */

@Controller
public class ProductController {
    private ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
    private ProductService productService = (ProductServiceImpl) context.getBean("productService");

    @RequestMapping(value = "/admin_product_table", method = RequestMethod.GET)
    public String showProduct(Model model) {
        model.addAttribute("productList", productService.findAll());
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "admin_product_table";
    }

    @RequestMapping(value = "/user_product_table", method = RequestMethod.GET)
    public String user_show_Product(Model model) {
        model.addAttribute("productList", productService.findAll());
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "user_product_table";
    }

    @RequestMapping(value = "/admin_add_product_form", method = RequestMethod.GET)
    public String showAddProductForm(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "admin_add_product_form";
    }

    @RequestMapping(value = "/admin_add_product", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product, BindingResult bindingResult, ModelMap model) {
        productService.save(product);
        model.addAttribute("productList", productService.findAll());
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "redirect:admin_product_table";
    }

    @RequestMapping(value = "/admin_update_product", method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute("product") Product product, BindingResult bindingResult, ModelMap model) {
        productService.update(product.getId(), product);
        model.addAttribute("productList", productService.findAll());
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "redirect:admin_product_table";
    }

    @RequestMapping(value = "/admin_update_product_form", method = RequestMethod.GET)
    public String showUpdateProductForm(@RequestParam("id") int id, Model model) {
        Product product = productService.findOne(id);
        if (product == null)
            return "redirect:admin_product_table";
        model.addAttribute("product", product);
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());

        return "admin_update_product_form";
    }


    @RequestMapping(value = "/admin_delete_product")
    public String deleteProduct(@ModelAttribute("id") int[] id, BindingResult bindingResult, ModelMap model) {
        for (int i = 0; i < id.length; i++) {
            productService.delete(id[i]);
        }
        model.addAttribute("productList", productService.findAll());
        model.addAttribute("username", MyUserDetailsService.currentUser.getUsername());
        return "redirect:admin_product_table";
    }
}
