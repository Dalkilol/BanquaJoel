/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ESIC
 */
public class MsgDao {
    public static void insertMsgClient(Messagerie m, Client c)
            throws SQLException {
        String sql = "INSERT INTO messagerie (contenu, idclient, idconseiller) VALUES (?, ?, ?)";
        int id = c.getIdClient();
        Conseiller cons = c.getConseiller();
        int idc = cons.getIdConseiller();

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        
        ordre.setString(1, m.getContenu());
        ordre.setInt(2, id);
        ordre.setInt(3, idc);

        ordre.execute();
    }
    
}
