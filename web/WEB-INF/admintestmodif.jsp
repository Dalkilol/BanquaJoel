<%-- 
    Document   : adminHome
    Created on : 11 avr. 2019, 13:41:53
    Author     : ESIC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href ="CSS/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet"
              href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
              integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

        <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
                integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
                integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
        crossorigin="anonymous"></script>
        <title>JSP Page</title>



    </head>
    <body style="background-color: #eff9f1">
        <%@include file="menuAdmin.jsp" %>
        <div class ="container">
            <br><br><br>

            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header" style="background-color: #bae0be">
                        <h4 style="color: black; text-align: center;">Modification du conseiller</h4>
                    </div>
                    <form action="AdminModif" method="POST">
                        <br>

                        <div class="form-group col col-12">
                            <label>ID du consesiller</label>
                            <input type="text" class="form-control" required name="idmodif" value="${idreturn}">
                        </div>

                        <div class="form-row col col-12">
                            <div class="form-group col col-6">
                                <label>Nom</label>
                                <input type="text" class="form-control" required name="nommodif" value="${nomreturn}">
                            </div>
                            <div class="form-group col col-6">
                                <label>Prenom</label>
                                <input type="text" class="form-control" required name="prenommodif" value="${prenomreturn}">
                            </div>
                        </div>
                        <div class="form-row col col-12">   
                            <div class="form-group col col-6">
                                <label>Email</label>
                                <input type="text" class="form-control" required name="mailmodif" value="${mailreturn}">
                            </div>
                            <div class="form-group col col-6">
                                <label>Mot de passe</label>
                                <input type="text" class="form-control" required name="mdpmodif" value="${mdpreturn}">
                            </div>
                        </div>
                        <br>
                        <div class="form-row col col-12"> 
                            <div class="form-row col col-6">
                                <button type="submit" class="btn btn-outline-success justify-content-arround">Valider</button>
                            </div>
                            <div class="form-row col col-6">
                                <a href="Home"><button type="submit" class="btn btn-outline-danger justify-content-arround">Retour</button></a>
                            </div>
                        </div>
                    </form>
                </div>    
            </div>
        </div>
    </body>
</html>
