/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.bank.bean.Client;
import com.bank.bean.Conseiller;
import com.bank.bean.Personne;
import com.bank.dao.ClientDao;
import com.bank.dao.PersonneDao;

/**
 *
 * @author ESIC
 */
@WebServlet(name = "ConsAddClientServlet", urlPatterns = {"/AddClient"})
public class ConsAddClientServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConsAddClientServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConsAddClientServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("/WEB-INF/conAddClient.jsp").forward(request,response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        Personne p = (Personne) session.getAttribute("user");
        request.setAttribute("user", p);
        
        Conseiller conseiller = (Conseiller)session.getAttribute("conseiller");
        request.setAttribute("conseiller", conseiller);
        
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");

        Personne personne = new Personne();

        try {

            personne = PersonneDao.RecherchePersonne(nom, prenom);
            if (personne != null){
              ClientDao.AddClient(personne);
              ClientDao.AddClient(personne, conseiller);
            }
            else{
                
            }
            request.getRequestDispatcher("/WEB-INF/adminHome.jsp").forward(request, response);
            
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());
        }
               
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
