/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.servlet;

import com.bank.bean.Personne;
import com.bank.bean.Client;
import com.bank.bean.Conseiller;
import com.bank.bean.Messagerie;
import com.bank.dao.MsgDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ESIC
 */
@WebServlet(name = "MessagerieServlet", urlPatterns = {"/MessagerieServlet"})
public class MessagerieServlet extends HttpServlet {

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
            out.println("<title>Servlet MessagerieServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MessagerieServlet at " + request.getContextPath() + "</h1>");
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
        
 
        if (p.isIsClient()) {
            Client client = (Client) session.getAttribute("client");
           
            /*try {
                System.out.println("tes jojo" + client.getNom());
            } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.println("erre try syso" + e.getMessage());
            }*/
           
            request.setAttribute("client", client);
            
            request.getRequestDispatcher("/WEB-INF/clientMsg.jsp").forward(request, response);
            
        }
        if (p.isIsConseiller()) {
            Conseiller co = (Conseiller) session.getAttribute("user");
            request.setAttribute("conseiller", co);
            request.getRequestDispatcher("/WEB-INF/consMsgConseiller.jsp").forward(request, response);
        }
        else{
            PrintWriter out = response.getWriter();
            out.println("n'importe quoi ");
        }
        
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
        
        System.out.println("qzerohqzeruifhqzeruiqeuirqeuirqeriqeiruqeirughqzeiruqeigh");
        request.setAttribute("testest", "ceci est un test");
        HttpSession session = request.getSession(true);
        Client cl = (Client) session.getAttribute("client");
        Conseiller conseiller = new Conseiller(); 
        conseiller = cl.getConseiller(); 
        
        String contenu = request.getParameter("msgClient");
        int idClient = cl.getIdClient();
        
        int idConseiller = conseiller.getIdConseiller();

        Messagerie m = new Messagerie();
        m.setContenu(contenu);
        m.setIdclient(idClient);
        m.setIdconseiller(idConseiller);
       

        try {

            MsgDao.insertMsgClient(m, cl);
            response.sendRedirect("MessagerieServlet");
            
      
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());
        }}}
