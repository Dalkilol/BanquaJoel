
package com.bank.bean;

public class Messagerie {
    
    private int idmessagerie;
    private String contenu;
    private int idconseiller;
    private int idclient;
    
    Messagerie(){
    
    }
    
    Messagerie(int idmessagerie, String contenu, int idconseiller, int idclient){
        
    this.idmessagerie=idmessagerie;
    this.contenu=contenu;
    this.idconseiller=idconseiller;
    this.idclient=idclient;
    }

    public int getIdmessagerie() {
        return idmessagerie;
    }

    public void setIdmessagerie(int idmessagerie) {
        this.idmessagerie = idmessagerie;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public int getIdconseiller() {
        return idconseiller;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }

    public int getIdclient() {
        return idclient;
    }

    public void setIdclient(int idclient) {
        this.idclient = idclient;
    }
    
    
    public String InfoMessagerie(){
    return "Id Messagerie : "+idmessagerie+" | Contenu : " + contenu+" | Id Client : "+idclient+" | Id conseiller : " + idconseiller;
    }
    
}
