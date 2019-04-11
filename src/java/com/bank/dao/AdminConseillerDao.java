/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.Personne;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ESIC
 */
public class AdminConseillerDao {
    
        public static void insertConseiller(Personne p)
            throws SQLException {
        String sql = "INSERT INTO conseiller (nom, prenom, mail, mdp) VALUES (?, ?, ?, ?)";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setString(1, p.getNom());
        ordre.setString(2, p.getPrenom());
        ordre.setString(3, p.getMail());
        ordre.setString(4, p.getMdp());

        ordre.execute();
    }
    
}
