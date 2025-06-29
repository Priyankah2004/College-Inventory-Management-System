package com.inventory.controller;

import com.inventory.dao.ItemDAO;
import com.inventory.model.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewItemsServlet")
public class ViewItemsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ItemDAO itemDAO = new ItemDAO();
        List<Item> items = itemDAO.getAllItems();
        
        request.setAttribute("items", items);
        request.getRequestDispatcher("viewItems.jsp").forward(request, response);
    }
}
