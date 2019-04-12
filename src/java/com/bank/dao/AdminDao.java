/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.Personne;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ESIC
 */
public class AdminDao {
    
        public static void insertConseiller(Personne p)
            throws SQLException {
        String sql = "INSERT INTO personne (nom, prenom, mail, mdp, isconseiller) VALUES (?, ?, ?, ?, 1)";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setString(1, p.getNom());
        ordre.setString(2, p.getPrenom());
        ordre.setString(3, p.getMail());
        ordre.setString(4, p.getMdp());

        ordre.execute();
    }

    public static void updateConseiller(Personne p)
            throws SQLException {
        String sql = "UPDATE personne SET nom=?, prenom=?, mail=?, mdp=? WHERE personne.idpersonne=?";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setString(1, p.getNom());
        ordre.setString(2, p.getPrenom());
        ordre.setString(3, p.getMail());
        ordre.setString(4, p.getMdp());
        ordre.setInt(5, p.getIdpersonne());

        ordre.execute();
    }

    public static String desactiveConseiller(Personne p)
        throws SQLException {
        String sql = "UPDATE personne p SET p.isconseiller=0 WHERE p.idpersonne=? AND p.nom=?";
        String msg = "va voir aill....";
        Connection connexion = ConnectConf.getConnection();
        PreparedStatement ordre = connexion.prepareStatement(sql);
        ordre.setInt(1, p.getIdpersonne());
        ordre.setString(2, p.getNom());
        
        
        int row = ordre.executeUpdate();
        
        if(row != 0){
            msg = "Desactivé";
        }
        
        
        
        
        return msg;
        
    }
    
    public static List<Personne> getAllConseiller()
    throws SQLException{
        List<Personne> personnes = new ArrayList<>();
        
        String sql = "SELECT * FROM personne p WHERE p.isconseiller=1";
        
        Connection connexion = ConnectConf.getConnection();
        Statement req = connexion.createStatement();
        ResultSet rs = req.executeQuery(sql);
        while(rs.next()){
            Personne p = new Personne();
            p.setIdpersonne(rs.getInt("idpersonne"));
            p.setNom(rs.getString("nom"));
            p.setPrenom(rs.getString("prenom"));
            p.setMail(rs.getString("mail"));
            p.setMdp(rs.getString("mdp"));
            
            personnes.add(p);
        }
        return personnes;
    }
    
}
