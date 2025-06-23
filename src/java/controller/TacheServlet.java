/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TacheManager;
@WebServlet("/TacheServlet")
public class TacheServlet extends HttpServlet {
 
    private final TacheManager tacheManager = new TacheManager();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String description = request.getParameter("description");
        if (description != null && !description.trim().isEmpty()) {
            tacheManager.ajouterTache(description);
        }
       request.setAttribute("taches", tacheManager.getTaches());
        request.getRequestDispatcher("taches.jsp").forward(request, response);
    }

    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("taches", tacheManager.getTaches());
       request.getRequestDispatcher("taches.jsp").forward(request, response);
   }}