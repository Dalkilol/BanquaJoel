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
public class Compte {
    
    private int idcompte;
    private Double solde;
    private Double decouvert;
    private int client_idclient;
    
    
    
    public Compte(){
    
    }
    
    public Compte(int idcompte, Double solde, Double decouvert, int client_idclient){
    this.idcompte=idcompte;
    this.solde=solde;
    this.decouvert=decouvert;
    this.client_idclient=client_idclient;
    }

    public int getIdcompte() {
        return idcompte;
    }

    public Double getSolde() {
        return solde;
    }

    public Double getDecouvert() {
        return decouvert;
    }

    public int getClient_idclient() {
        return client_idclient;
    }

    public void setIdcompte(int idcompte) {
        this.idcompte = idcompte;
    }

    public void setSolde(Double solde) {
        this.solde = solde;
    }

    public void setDecouvert(Double decouvert) {
        this.decouvert = decouvert;
    }

    public void setClient_idclient(int client_idclient) {
        this.client_idclient = client_idclient;
    }
    
    public String infoCompte(){
        return "Id Compte : "+idcompte+" | Id Client : " + client_idclient+" | Solde du compte : " + solde + " | Découvert autorisé : " + decouvert;
    }
    
}
