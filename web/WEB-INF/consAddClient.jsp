<%-- 
    Document   : consAddClient
    Created on : 11 avr. 2019, 13:43:17
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    One of three columns
                </div>
                <div class="col-sm">
                                        
                    <form action="AddClient" methode="POST">                        
                        <div class="form-group" >
                            <input class="front-control" type="text" placeholder="Nom" name="nom">                         
                        </div>
                        <div class="form-group" >
                            <input class="front-control" type="text" placeholder="Préom" name="prenom">                         
                        </div>
                        <div class="form-group" >
                            <input class="front-control" type="text" placeholder="e-mail" name="mail">                         
                        </div>   
                        <div class="form-group">
                            <input class="front-control" type="password" placeholder="mot de passe" name="mdp">
                        </div>
                        <div style = "align-items: center">                    
                            <button type="submit" class="btn btn-danger"> Envoyer </button>
                        </div>
                                                                       
                    </form>
                    
                                       
                </div>
                <div class="col-sm">
                    One of three columns
                </div>
            </div>
        </div>
    </body>
</html>
