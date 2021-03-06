/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.servlet;

import com.bank.bean.Personne;
import com.bank.dao.AdminDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Gross
 */
@WebServlet(name = "AdminModifyServlet", urlPatterns = {"/AdminModif"})
public class AdminModifyServlet extends HttpServlet {

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
            out.println("<title>Servlet AdminModifyServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminModifyServlet at " + request.getContextPath() + "</h1>");
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
        
        String iD = request.getParameter("id");
        int idreturn = Integer.parseInt(iD);
        String nomreturn = request.getParameter("nom");
        String prenomreturn = request.getParameter("prenom");
        String mailreturn = request.getParameter("mail");
        String mdpreturn = request.getParameter("mdp");
        
        request.setAttribute("idreturn", idreturn);
        request.setAttribute("nomreturn", nomreturn);
        request.setAttribute("prenomreturn", prenomreturn);
        request.setAttribute("mailreturn", mailreturn);
        request.setAttribute("mdpreturn", mdpreturn);

 
        request.getRequestDispatcher("/WEB-INF/admintestmodif.jsp").forward(request, response);

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

        String iD = request.getParameter("idmodif");
        int id = Integer.parseInt(iD);
        String nom = request.getParameter("nommodif");
        String prenom = request.getParameter("prenommodif");
        String mail = request.getParameter("mailmodif");
        String mdp = request.getParameter("mdpmodif");

        Personne p = new Personne();
        p.setIdpersonne(id);
        p.setNom(nom);
        p.setPrenom(prenom);
        p.setMail(mail);
        p.setMdp(mdp);

        try {
            AdminDao.modifConseiller(p);
            response.sendRedirect("Home");

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
