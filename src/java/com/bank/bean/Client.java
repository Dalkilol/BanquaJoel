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
public class Client extends Personne{
    
    private int idClient;
    private Conseiller conseiller;

    public Client(int idpersonne, String nom, String prenom, String mail, String mdp) {
        super(idpersonne, nom, prenom, mail, mdp);
    }

    public Client(int idClient, Conseiller conseiller, int idpersonne, String nom, String prenom, String mail, String mdp) {
        super(idpersonne, nom, prenom, mail, mdp);
        this.idClient = idClient;
        this.conseiller = conseiller;
    }
    public Client(int idClient, Conseiller conseiller, int idpersonne, String nom, String prenom, String mail) {
        super(idpersonne, nom, prenom, mail);
        this.idClient = idClient;
        this.conseiller = conseiller;
    }

    public Client() {
    }
    
    

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public Conseiller getConseiller() {
        return conseiller;
    }

    public void setConseiller(Conseiller conseiller) {
        this.conseiller = conseiller;
    }
    
    

   
    
    
    
}