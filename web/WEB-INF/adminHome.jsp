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
                <div class="col-sm-7">
                    <div class="card">
                        <div class="card-header" style="background-color: #bae0be">
                            <h3 style="color: black; text-align: center;">Gestion des conseillers</h3>
                        </div>
                        <div class ="card-body">
                            <p class="actualite">Vous retrouverez ici toutes les actions que vous pouvez effectuer pour la création,
                                la mise à jour ou la supression de conseillers pour BanquaJoel.</p>
                            <br>
                            <div class ="container">
                                <div class="row justify-content-arround">
                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-dark justify-content-arround" data-toggle="modal" data-target="#ajout">Ajouter conseiller</button>
                                        <div class="modal fade" id="ajout" tabindex="-1" role="dialog" aria-labelledby="ajout" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="ajout">Ajouter un conseiller</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <form action="AdminAdd" method="POST">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Nom" name="nom">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Prenom" name="prenom">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Mail" name="mail">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="password" class="form-control" required placeholder="Mot de passe" name="mdp">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Retour</button>
                                                            <button type="submit" class="btn btn-primary">Valider</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-dark justify-content-arround" data-toggle="modal" data-target="#modif">Modifier conseiller</button>
                                        <div class="modal fade" id="modif" tabindex="-1" role="dialog" aria-labelledby="modif" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modif">Modifier un conseiller</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <form action="AdminModif" method="POST">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Nom" name="nom">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Prenom" name="prenom">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Mail" name="mail">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="password" class="form-control" required placeholder="Mot de passe" name="mdp">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Retour</button>
                                                            <button type="submit" class="btn btn-primary">Valider</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-4">
                                        <button type="button" class="btn btn-outline-dark justify-content-arround" data-toggle="modal" data-target="#supprimer">Desactiver conseiller</button>
                                        <div class="modal fade" id="supprimer" tabindex="-1" role="dialog" aria-labelledby="supprimer" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="supprimer">Desactiver un conseiller</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <form action="AdminDel" method="POST">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <input type="number" class="form-control" required placeholder="ID du conseiller" name="id">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" required placeholder="Nom du conseiller" name="nom">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Retour</button>
                                                            <button type="submit" class="btn btn-primary">Valider</button>
                                                        </div>
                                                        <div>
                                                             ${msg}
                                                        </div> 
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                                <div>
                                    <br>${msgAdmin}
                                </div> 
                            </div> 
                        </div>       
                    </div>         
                </div>
            </div>
            <div class="row bg-white p-5">

                <div class="col">
                    <table class="table text-center">
                        <thead style="background-color: #bae0be">
                            <tr>
                                <th scope="col">ID conseiller</th>
                                <th scope="col">Nom</th>
                                <th scope="col">Prenom</th>
                                <th scope="col">Mail</th>
                                <th scope="col">Mot de passe</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allConseillers}" var="m">
                                <tr>    
                                    <td>${m.idpersonne}</td>
                                    <td>${m.nom}</td>
                                    <td>${m.prenom}</td>
                                    <td>${m.mail}</td>
                                    <td>${m.mdp}</td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div>   
            </div>
        </div
    </body>
</html>
