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

    public static Personne RecherchePersonne1(String nom, String prenom)
        throws SQLException{
        
        Personne p = null;
        
        String sql = "SELECT * FROM personne WHERE nom=? AND prenom=?";
        
        Connection connexion = ConnectConf.getConnection();
        
        PreparedStatement req = connexion.prepareStatement(sql);
        
        req.setString(1, nom);
        req.setString(2, prenom);
        
        ResultSet res  = req.executeQuery();
        
        if (res.next()){
            p = new Personne();
            p.setNom(res.getString("nom"));
            p.setPrenom(res.getString("prenom"));
            p.setMail(res.getString("mail"));
            p.setIsAdmin(res.getBoolean("isadmin"));
            p.setIsConseiller(res.getBoolean("isconseiller"));
            p.setIsClient(res.getBoolean("isclient"));            
        }
        
        return p;
    }
        
    
}
