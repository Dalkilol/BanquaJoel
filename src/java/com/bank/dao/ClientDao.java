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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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


    
    public static Personne getInfo(Client c) throws SQLException {

        Personne p = null;
        
        String sql1 = "SELECT * FROM personne WHERE mail=? AND mdp=?";
        
        Connection connexion = ConnectConf.getConnection();
        
        PreparedStatement req = connexion.prepareStatement(sql1);
        
        req.setString(1, c.getMail());
        req.setString(2, c.getMdp());
        
        ResultSet res = req.executeQuery();
        
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
    
    public static void updateInfo(Client c, String mdp) throws SQLException {
        
        Personne p = getInfo(c);
        
        String sql = "UPDATE personne SET mdp=? WHERE personne.idpersonne=?";
        
        Connection connexion = ConnectConf.getConnection();
       
        PreparedStatement ordre = connexion.prepareStatement(sql);
         
         ordre.setString(1, mdp);
         ordre.setInt(2, p.getIdpersonne());
         
         ordre.execute();
        
    }
    
    public static void getHistorique(String log, String pass) throws SQLException {
        
        List<String> dates = new ArrayList<>();

        String sql = "SELECT historique.dateOpe, historique.montantOpe, historique.motif, historique.idcompte FROM historique, personne, compte WHERE historique.compte_idcompte = compte.idcompte AND compte.client_idclient = personne.idpersonne AND mail=log AND mdp=pass";
        
        Connection connexion = ConnectConf.getConnection();
        
        PreparedStatement req = connexion.prepareStatement(sql);
        
        ResultSet rs = req.executeQuery();
        
        
    }
}
