/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;
import com.bank.bean.Conseiller; 
import com.bank.bean.Client;
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

    public static Personne RecherchePersonne(String nom, String prenom)
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
            p.setIdpersonne(res.getInt("idpersonne"));
            p.setNom(res.getString("nom"));
            p.setPrenom(res.getString("prenom"));
            p.setMail(res.getString("mail"));
            p.setMdp(res.getString("mdp"));
            p.setIsAdmin(res.getBoolean("isadmin"));
            p.setIsConseiller(res.getBoolean("isconseiller"));
            p.setIsClient(res.getBoolean("isclient"));          
        }
        
        return p;
    }
        
    public static Client getClient(Personne p) throws SQLException {
        Client c = null;
        String sql = "SELECT * \n"
                + "FROM client cl INNER JOIN personne pe\n"
                + "on cl.idclient = pe.idpersonne\n"
                + "WHERE pe.idpersonne = ?;";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement req = connexion.prepareStatement(sql);
        req.setInt(1, p.getIdpersonne());

        ResultSet res = req.executeQuery();

        if (res.next()) {
            Conseiller cons = new Conseiller();
            cons.setIdConseiller(res.getInt("idconseiller"));
                    
            c = new Client(res.getInt("idclient"), cons,res.getInt("idpersonne") ,res.getString("nom"), res.getString("prenom"), res.getString("mail"));
       
        }

    
    return c;
    }

    
    public static Conseiller getConseiller(Personne p) throws SQLException {
        Conseiller con = null;
        String sql = "SELECT * "
                + "FROM conseiller con INNER JOIN personne per "
                + "ON con.idconseiller = per.idpersonne "
                + "WHERE per.idpersonne = ?;";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement req = connexion.prepareStatement(sql);
        req.setInt(1, p.getIdpersonne());

        ResultSet res = req.executeQuery();

        if (res.next()) {
           con = new Conseiller(res.getInt("idconseiller"), res.getInt("idpersonne"), res.getString("nom"), res.getString("prenom"), res.getString("mail"), res.getString("mdp"));
        }
        return con;
    }

    
}
