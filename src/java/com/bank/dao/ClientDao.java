/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.Client;
import com.bank.bean.Conseiller;
import com.bank.bean.Personne;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ESIC
 */
public class ClientDao {
    
    
    public static void AddClient(Personne p, Conseiller c)
        throws SQLException{
        
        String sql = "INSERT INTO client (idclient, idconseiller) VALUE(?,?)";        
        Connection con = ConnectConf.getConnection();       
        PreparedStatement req = con.prepareStatement(sql);
                
        req.setInt(1, p.getIdpersonne());
        req.setInt(2, c.getIdConseiller());
        
        req.execute();
        
    }
    
    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


    
    public static void getInfo(String log, String pass) throws SQLException {

        String sql = "SELECT * FROM compte, client WHERE compte.idclient = client.idclient AND mail=log AND mdp=pass";
        
        Connection connexion = ConnectConf.getConnection();
        
        PreparedStatement req = connexion.prepareStatement(sql);
        
        req.execute();
        
    }
    
    public static void getHistorique(String log, String pass) throws SQLException {
        Personne p = null;

        String sql = "SELECT historique.dateOpe, historique.montantOpe, historique.motif, historique.idcompte FROM historique, client, compte WHERE historique.compte_idcompte = compte.idcompte AND compte.client_idclient = client.idclient AND mail=log AND mdp=pass";
        
        Connection connexion = ConnectConf.getConnection();
        
        PreparedStatement req = connexion.prepareStatement(sql);
        
        req.execute();
        
    }
}
