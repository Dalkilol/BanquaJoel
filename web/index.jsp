<%-- 
    Document   : index
    Created on : 11 avr. 2019, 13:34:45
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


        <style>
            .graybox {
                background-color: #ddd;
            }

            .stellbluebox {
                background-color: steelblue;
            }

            .center {
                text-align: center;
                color: #ddd;
            }
        </style>
    </head>

    <body style="background-color: #eff9f1">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #568c5d">


            <a class="navbar-brand" href="#">
                <img src="https://image.flaticon.com/icons/svg/126/126179.svg" width="30" height="40">
                BanquaJoel
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Accueil <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Actualités</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Devenir client</a>
                    </li>
                </ul>
            </div>
        </nav>


        <div class ="container">

            <br>
            <div class="row justify-content-md-center ">
                <h1 class="grostitre">BanquaJoel, la banque qui appartient à ses développeurs.</h1>
            </div>


            <br>
            <br>


            <div class="row bg-white">



                <div class="col mt-2 mb-2">
                    <div class="card  box-shadow" style="width: 26rem;height: 25rem; ">
                        <div class="card-header" style="background-color: #bae0be">
                            <h3 style="color: black; text-align: center;">Actualités</h3>
                        </div>
                        <div class="card-body text-center">
                            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="https://i.imgur.com/dfJp53a.png" width="300" height="220">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="https://img.20mn.fr/PI3Ol7lgRlGAs1BMQCgmEw/310x190_lama-rentre-game.jpg" width="310" height="220">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="https://cdn.radiofrance.fr/s3/cruiser-production/2016/11/bd9b1c00-4a98-42d6-917e-476f2e0c3b37/870x489_cxjl8ziw8aap7bl.jpg" width="310" height="220">
                                    </div>
                                </div>
                            </div>

                            <p class="actualite">La valeur des actions de Fifa en hausse considérable après les déclarations d'Emmanuel Macron</p>

                        </div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="card">
                        <img id="choupo" src="https://images.sudouest.fr/2019/04/08/5cab0a3766a4bd331c5ac1f3/widescreen/1000x500/eric-maxim-choupo-moting.jpg?v1" class="img-fluid" alt="Responsive image">
                        <div class ="card-body">
                            <p>La BanquaJoël accompagne aussi le Paris-Saint-Germain lors de toutes ses défaites en ligue des champions. Pourquoi ne pas nous rejoindre aussi ?</p>
                        </div>
                    </div>
                </div>
                <div class="col offset-md-2 mt-2">
                    <div class="card text-center box-shadow" style="width: 20rem;height: 25rem; ">
                        <div class="card-header" style="background-color: #bae0be">
                            <h3 style="color: black">Déjà chez nous ?</h3>
                        </div>
                        <div class="card-body">
                            <br>
                            <form action="connect" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Adresse email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Enter email" name="login">
                                    <small id="emailHelp" class="form-text text-muted">Nous ne partagerons jamais votre email
                                        avec quelqu’un d’autre (sauf avec Joël)</small>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mot de passe</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                           placeholder="Mot de passe" name="mdp">
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary btn-raised" style="background-color: #bae0be;">Connexion</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            <br><br><br><br>
            <div class="row justify-content-md-center">
                <img src=https://i.imgur.com/ME6Rvum.png">
            </div>
            <div class="row p-3" style="background-color:#dbd8d4 ">
                <div class="col"><br><br><p class = "actualite">Tous droits réservés BanquaJoel.</p></div>
            </div>




        </div>

    </body>

</html>