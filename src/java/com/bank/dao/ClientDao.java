/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.Client;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ESIC
 */
public class ClientDao {
    
    
    public static void AddClient(Client c)
        throws SQLException{
        
        String sql = "INSERT INTO client (nom, prenom, mail, mdp, conseiller_idconseiller) VALUE(?,?,?,?,?)";        
        Connection con = ConnectConf.getConnection();
        
        PreparedStatement req = con.prepareStatement(sql);
        
        
        req.execute();
        
    }
}
