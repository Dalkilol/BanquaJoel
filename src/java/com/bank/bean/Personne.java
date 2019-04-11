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
    private String nom;
    private String prenom;
    private String mail;
    private String photo;
    private String mdp;
    private int id;
    private int idconseiller;

    public Personne(String nom, String prenom, String mail, String mdp, String id) {
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
    }

    
    
    public Personne(String nom, String prenom, String mail, String mdp, int id, int idconseiller) {
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.mdp = mdp;
        this.id = id;
        this.idconseiller = idconseiller;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    
    public Personne() {
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    
    
    public String infoPersonne(){
        return("Nom : " + nom + "<br>Prénom : " + prenom + "<br>Mail : " + mail);
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

    public int getIdconseiller() {
        return idconseiller;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }
    

}