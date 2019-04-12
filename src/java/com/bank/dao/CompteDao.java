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
    
}
