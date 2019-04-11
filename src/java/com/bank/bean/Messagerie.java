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
public class Messagerie {
    
    private int idmessagerie;
    private String contenu;
    private int conseiller_idconseiller;
    private int client_idclient;
    
    Messagerie(){
    
    }
    
    Messagerie(int idmessagerie, String contenu, int conseiller_idconseiller, int client_idclient){
        
    this.idmessagerie=idmessagerie;
    this.contenu=contenu;
    this.conseiller_idconseiller=conseiller_idconseiller;
    this.client_idclient=client_idclient;
    }

    public int getIdmessagerie() {
        return idmessagerie;
    }

    public String getContenu() {
        return contenu;
    }

    public int getConseiller_idconseiller() {
        return conseiller_idconseiller;
    }

    public int getClient_idclient() {
        return client_idclient;
    }

    public void setIdmessagerie(int idmessagerie) {
        this.idmessagerie = idmessagerie;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public void setConseiller_idconseiller(int conseiller_idconseiller) {
        this.conseiller_idconseiller = conseiller_idconseiller;
    }

    public void setClient_idclient(int client_idclient) {
        this.client_idclient = client_idclient;
    }
    
    public String InfoMessagerie(){
    return "Id Messagerie : "+idmessagerie+" | Contenu : " + contenu+" | Id Client : "+client_idclient+" | Id conseiller : " + conseiller_idconseiller;
    }
    
}
