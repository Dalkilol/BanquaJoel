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
public class Personne  { 
    private int idpersonne;
    private String nom;
    private String prenom;
    private String mail;
    private String mdp;
    private boolean isAdmin;
    private boolean isConseiller;
    private boolean isClient;

    public Personne(int idpersonne, String nom, String prenom, String mail, String mdp) {
        this.idpersonne = idpersonne;
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.mdp = mdp;
    

    }
    public Personne(int idpersonne, String nom, String prenom, String mail) {
        this.idpersonne = idpersonne;
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.mdp = mdp;
    

    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public boolean isIsConseiller() {
        return isConseiller;
    }

    public void setIsConseiller(boolean isConseiller) {
        this.isConseiller = isConseiller;
    }

    public boolean isIsClient() {
        return isClient;
    }

    public void setIsClient(boolean isClient) {
        this.isClient = isClient;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public int getIdpersonne() {
        return idpersonne;
    }

    public void setIdpersonne(int idpersonne) {
        this.idpersonne = idpersonne;
    }

    public Personne() {
    }

    
    

}
