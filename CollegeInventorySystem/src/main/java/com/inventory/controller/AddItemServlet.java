package com.inventory.controller;

import com.inventory.dao.ItemDAO;
import com.inventory.model.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Date;

@WebServlet("/addItem")
public class AddItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));

        Item item = new Item();
        item.setName(name);
        item.setCategory(category);
        item.setQuantity(quantity);
        item.setPrice(price);
        item.setAddedDate(new Date());

        ItemDAO dao = new ItemDAO();
        dao.addItem(item);

        // ✅ Forward to success page with item name
        request.setAttribute("itemName", name);
        request.getRequestDispatcher("addSuccess.jsp").forward(request, response);
    }
}
