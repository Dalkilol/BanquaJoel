<%-- 
    Document   : adminHome
    Created on : 11 avr. 2019, 13:41:53
    Author     : ESIC
--%>

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

            <br>
            
             
                
            <br>
            <br>


            <div class="row bg-white p-5">



                <div class="col mt-5 ml-5">
                    <h1 display-4 style="font-style: italic;">Bienvenue, ${user.prenom}.</h1><br>
                    <p>BanquaJoel ne serait rien sans vous.
                        
                </div>
                <div class="col">
                    <div class="card">
                       <div class="card-header" style="background-color: #bae0be">
                            <h3 style="color: black; text-align: center;">Gestion des conseillers</h3>
                             
                        </div>
                        <div class ="card-body">
                            <p class="actualite">Vous retrouverez ici toutes les actions que vous pouvez effectuer pour la création,
                            la mise à jour ou la supression de conseillers pour BanquaJoel.</p>
                            <br>
                            <div class ="container">
                                <div class="row no-gutters">
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-dark">Action conseiller</button>
                                    </div>
 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>

</body>
</html>
