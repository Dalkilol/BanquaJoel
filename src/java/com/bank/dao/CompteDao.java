/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.Compte;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ESIC
 */
public class CompteDao {
    
    
    public static void insertCompte(Compte c)
    throws SQLException {
        
         String sql = "INSERT INTO compte (idcompte, solde, decouvert, idclient) VALUES (?, ?, ?, ?)";

        Connection connexion = ConnectConf.getConnection();
        PreparedStatement ordre = connexion.prepareStatement(sql);
        
        ordre.setInt(1, c.getIdcompte());
        ordre.setDouble(2, c.getSolde());
        ordre.setDouble(3, c.getDecouvert());
        ordre.setInt(4, c.getIdclient());

        ordre.execute();
        
        
}
        public static void updateCcompte(Compte c)
            throws SQLException {
        String sql = "UPDATE compte SET solde=?, decouvert=?, idclient=? WHERE compte.idcompte=?";

        Connection connexion = ConnectConf.getConnection();
        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setDouble(1, c.getSolde());
        ordre.setDouble(2, c.getDecouvert());
        ordre.setInt(3, c.getIdclient());
        ordre.setInt(4, c.getIdcompte());

        ordre.execute();
    }
        
        public static Compte selectCompte(Compte c)
            throws SQLException {
        String sql = "SELECT * FROM compte WHERE compte.idcompte=?";

        Connection connexion = ConnectConf.getConnection();
        PreparedStatement ordre = connexion.prepareStatement(sql);
        
        ordre.setInt(1, c.getIdcompte());
        ordre.execute();
        
        ResultSet rs = ordre.executeQuery();
        
        if(rs.next()){
            c = new Compte();
            c.setIdcompte(rs.getInt("idcompte"));
            c.setSolde(rs.getDouble("solde"));
            c.setDecouvert(rs.getDouble("decouvert"));
            c.setIdclient(rs.getInt("idclient"));
 
        }
        return c;
        
    }  
        
        
}
