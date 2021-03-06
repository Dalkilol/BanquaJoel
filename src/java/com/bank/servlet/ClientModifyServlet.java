/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.servlet;

import com.bank.bean.Client;
import com.bank.bean.Personne;
import static com.bank.dao.ClientDao.updateInfo;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author stagiaire
 */
@WebServlet(name = "ClientModifyServlet", urlPatterns = {"/ModifClient"})
public class ClientModifyServlet extends HttpServlet {

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
            out.println("<title>Servlet ClientModifyServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClientModifyServlet at " + request.getContextPath() + "</h1>");
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
            
        HttpSession session = request.getSession(true);
        Personne p = (Personne) session.getAttribute("user");
        request.setAttribute("user",p);
        
        Client client = (Client) session.getAttribute("client");
        request.setAttribute("client", client);
        request.getRequestDispatcher("/WEB-INF/clientProfil.jsp").forward(request, response);
        
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
        request.setAttribute("user",p);
        
 
        String mdp = request.getParameter("Newmdp");
        String mail = request.getParameter("Newmail");
       
        Personne pe = new Personne();
        pe.setMail(mail);
        pe.setMdp(mdp);
        pe.setNom(p.getNom());
        pe.setPrenom(p.getPrenom());
        pe.setIdpersonne(p.getIdpersonne());
        
        try {
    
            updateInfo(pe);
            
            request.getSession().setAttribute("user", pe);
           response.sendRedirect("ModifClient");
            /*
            out.println("Nom" + c.getNom());
            out.println("Prenom" + c.getPrenom());
            out.println("Nouveau mail" + c.getMail());
            out.println("ID" + c.getIdpersonne());
            out.println("Nouveau mdp" + c.getMdp());
            */
        
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("ex" + e.getMessage());
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
