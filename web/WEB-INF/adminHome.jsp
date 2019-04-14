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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>  
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
                                    </div>
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
                                                                <input type="email" class="form-control" required placeholder="Mail" name="mail">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="password" class="form-control" required placeholder="Mot de passe" name="mdp">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer ">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Retour</button>
                                                            <button type="submit" class="btn btn-primary">Valider</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                    </div>
                                </div> 

                            </div> 
                        </div>       
                    </div>         
                </div>
            </div>
            <div>
                ${msgAdmin}
            </div>               
            <div class="row bg-white p-5">
                <div class="col">
                    <table class="table text-center">
                        <thead style="background-color: #bae0be">
                            <tr>
                                <th scope="col">Conseiller acitf</th>
                                <th scope="col">Nom</th>
                                <th scope="col">Prenom</th>
                                <th scope="col">Mail</th>
                                <th scope="col">Mot de passe</th>
                                <th scope="col">Modifier</th>
                                <th scope="col">Desactiver</th>
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
                                    <td>
                                        <button type="submit" class="btn btn-raised btn-info bmd-btn-fab bmd-btn-fab-sm"data-toggle="modal" data-target="#modif">
                                            <span class="glyphicon glyphicon-pencil"></span>
                                        </button>
                                        <input type="hidden" name="id" value="${m.idpersonne}">
                                        <input type="hidden" name="nom" value="${m.nom}">
                                        <input type="hidden" name="prenom" value="${m.prenom}">
                                        <input type="hidden" name="mail" value="${m.mail}">
                                        <input type="hidden" name="mdp" value="${m.mdp}">

                                        <div class="modal fade" id="modif" tabindex="-1" role="dialog" aria-labelledby="ajout" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modif">Modifier le conseiller</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="card">
                                                        <form action="AdminModif" method="POST">
                                                            <br>
                                                            <div class="form-group col col-12">
                                                                <label>ID du consesiller</label>
                                                                <input type="text" class="form-control" required name="idmodif">
                                                            </div>
                                                            <div class="form-row col col-12">
                                                                <div class="form-group col col-6">
                                                                    <label>Nom</label>
                                                                    <input type="text" class="form-control" required name="nommodif">
                                                                </div>
                                                                <div class="form-group col col-6">
                                                                    <label>Prenom</label>
                                                                    <input type="text" class="form-control" required name="prenommodif">
                                                                </div>
                                                            </div>
                                                            <div class="form-row col col-12">   
                                                                <div class="form-group col col-6">
                                                                    <label>Email</label>
                                                                    <input type="text" class="form-control" required name="mailmodif">
                                                                </div>
                                                                <div class="form-group col col-6">
                                                                    <label>Mot de passe</label>
                                                                    <input type="text" class="form-control" required name="mdpmodif">
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer ">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Retour</button>
                                                                <button type="submit" class="btn btn-primary">Valider</button>
                                                            </div>

                                                        </form>
                                                    </div>    
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <form action="AdminDel">
                                            <button type="submit" class="btn btn-raised  btn-danger bmd-btn-fab bmd-btn-fab-sm">
                                                <span class="glyphicon glyphicon-ban-circle"></span>
                                            </button>
                                            <input type="hidden" name="id" value="${m.idpersonne}">
                                        </form>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div>   
            </div>
            <div class="row bg-white p-5">
                <div class="col">
                    <table class="table text-center">
                        <thead style="background-color: #bae0be">
                            <tr>
                                <th scope="col">Conseiller inacitf</th>
                                <th scope="col">Nom</th>
                                <th scope="col">Prenom</th>
                                <th scope="col">Mail</th>
                                <th scope="col">Mot de passe</th>
                                <th scope="col">Modifier</th>
                                <th scope="col">Reactiver</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allConseillersDesact}" var="m">
                                <tr>    
                                    <td>${m.idpersonne}</td>
                                    <td>${m.nom}</td>
                                    <td>${m.prenom}</td>
                                    <td>${m.mail}</td>
                                    <td>${m.mdp}</td>
                                    <td>
                                        <form action="AdminModif" action="GET">
                                            <button type="submit" class="btn btn-raised btn-info bmd-btn-fab bmd-btn-fab-sm">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </button>
                                            <input type="hidden" name="id" value="${m.idpersonne}">
                                            <input type="hidden" name="nom" value="${m.nom}">
                                            <input type="hidden" name="prenom" value="${m.prenom}">
                                            <input type="hidden" name="mail" value="${m.mail}">
                                            <input type="hidden" name="mdp" value="${m.mdp}">
                                        </form>

                                    <td>
                                        <form action="AdminActive">
                                            <button type="submit" class="btn btn-raised  btn-success bmd-btn-fab bmd-btn-fab-sm" name="btn-reactive">
                                                <span class="glyphicon glyphicon-repeat"></span>
                                            </button>
                                            <input type="hidden" name="id" value="${m.idpersonne}">
                                        </form>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div>   
            </div>
        </div>
    </body>

</html>
