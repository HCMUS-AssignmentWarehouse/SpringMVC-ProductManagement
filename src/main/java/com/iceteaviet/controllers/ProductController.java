package com.iceteaviet.controllers;

import com.iceteaviet.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by tamdoan on 03/06/2017.
 */

@Controller
public class ProductController {
    @RequestMapping(value = "/product_table", method = RequestMethod.GET)
    public ModelAndView showProduct() {
        return new ModelAndView("product_table", "product", new Product());
    }

    @RequestMapping(value = "/add_product_form", method = RequestMethod.GET)
    public String showAddProductForm(Model model) {
        //return new ModelAndView("add_product_form", "product", new Product());
        model.addAttribute("product", new Product());
        return "add_product_form";
    }

    @RequestMapping(value = "/product_table", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product, BindingResult bindingResult, ModelMap model) {
        model.addAttribute("id", product.getId());
        model.addAttribute("name", product.getName());
        model.addAttribute("description", product.getDescription());
        model.addAttribute("quantity", product.getQuantity());
        model.addAttribute("price", product.getPrice());
        model.addAttribute("type", product.getType());
        model.addAttribute("expiryDate", product.getExpiryDate());

        return "product_table";
    }

    @RequestMapping(value = "/edit_product_form", method = RequestMethod.GET)
    public ModelAndView editProduct() {
        return new ModelAndView("edit_product_form");
    }
}
