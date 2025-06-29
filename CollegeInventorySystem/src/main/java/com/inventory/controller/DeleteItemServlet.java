package com.inventory.controller;

import com.inventory.dao.ItemDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/deleteItem")
public class DeleteItemServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int itemId = Integer.parseInt(request.getParameter("id"));

        ItemDAO dao = new ItemDAO();
        dao.deleteItem(itemId);

        // Redirect back to view items after deletion
        response.sendRedirect("ViewItemsServlet");
    }
}
