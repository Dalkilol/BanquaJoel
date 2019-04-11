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

/**
 *
 * @author ESIC
 */

public class PersonneDao {
    
    
        public static Personne getByLogAndPass(String log, String pass)
            throws SQLException {
        Personne p = null;

        String sql = "SELECT * FROM personne WHERE mail=? AND mdp=?";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement req = connexion.prepareStatement(sql);

        req.setString(1, log);
        req.setString(2, pass);

        ResultSet res = req.executeQuery();

        if (res.next()) {
            p = new Personne();
            p.setNom(res.getString("nom"));
            p.setPrenom(res.getString("prenom"));
            p.setMail(res.getString("mail"));
            p.setIdpersonne(res.getInt("idpersonne"));
            p.setIsAdmin(res.getBoolean("isadmin"));
            p.setIsClient(res.getBoolean("isclient"));
            p.setIsConseiller(res.getBoolean("isconseiller"));

        }

        return p;
    }
    
    
    

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

        public static Personne selectConseiller(Personne p)
            throws SQLException {
        String sql = "SELECT * FROM conseiller WHERE conseiller.idconseiller=?";

        Connection connexion = ConnectConf.getConnection();
        PreparedStatement ordre = connexion.prepareStatement(sql);
        ordre.setInt(1, p.getIdpersonne());
        ordre.execute();
        
        ResultSet rs = ordre.executeQuery();
         if(rs.next()){
             p = new Personne();
             p.setIdpersonne(rs.getInt("idpersonne"));
             p.setNom(rs.getString("nom"));
             p.setPrenom(rs.getString("prenom"));
             p.setMail(rs.getString("mail"));
             p.setMdp(rs.getString("mdp"));

         }
        return p;
        
        }
    
}
