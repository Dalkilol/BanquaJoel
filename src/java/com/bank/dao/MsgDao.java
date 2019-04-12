/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.dao;

import com.bank.bean.Messagerie;
import com.bank.bean.Personne;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ESIC
 */
public class MsgDao {
    public static void insertMsgClient(Messagerie m)
            throws SQLException {
        String sql = "INSERT INTO messagerie (idmessagerie, contenu, idclient, idconseiller) VALUES (?, ?, ?, ?)";

        Connection connexion = ConnectConf.getConnection();

        PreparedStatement ordre = connexion.prepareStatement(sql);

        ordre.setInt(1, m.getIdmessagerie());
        ordre.setString(2, m.getContenu());
        ordre.setInt(3, m.getIdclient());
        ordre.setInt(4, m.getIdconseiller());

        ordre.execute();
    }
}
