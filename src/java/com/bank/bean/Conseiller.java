/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.bean;

/**
 *
 * @author ESIC
 */
public class Conseiller extends Personne{
    private int idconseiller;

    public Conseiller(int idpersonne, String nom, String prenom, String mail, String mdp) {
        super(idpersonne, nom, prenom, mail, mdp);
    }

    public Conseiller() {
    }

    public int getIdConseiller() {
        return idconseiller;
    }

    public void setIdConseiller(int idConseiller) {
        this.idconseiller = idConseiller;
    }
    
    
}
