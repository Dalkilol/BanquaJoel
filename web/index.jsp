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

<body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <span class="mdl-layout-title">Welcome To BanquApp</span>
            </div>
        </header>

        <div class="mdl-layout__drawer">
            <span class="mdl-layout-title">Joel BANKA</span>
            <nav class="mdl-navigation">
                <a class="mdl-navigation__link" href="">Home</a>
                <a class="mdl-navigation__link" href="">About</a>
            </nav>
        </div>

        <div class="card">
            <div class="card-header">
            </div>

        </div>
        <br>
        <h2 class="text-center display-3" style="color: darkgray">Dev 12 Web</h2>
        <br>
        <div class="col d-flex justify-content-center">
            <div class="card text-center box-shadow" style="width: 20rem;height: 25rem; box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);">
                <div class="card-header" style="background-color: steelblue">
                    <h3 style="color: white">Login</h3>
                </div>
                <div class="card-body">
                    <br>
                    <form action="connect" method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp" placeholder="Enter email" name="login">
                            <small id="emailHelp" class="form-text text-muted">Nous ne partagerons jamais votre email
                                avec quelqu’un d’autre</small>
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Mot de passe</label>
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="Mot de passe" name="mdp">
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary btn-raised" style="background-color: steelblue; box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 5px 5px rgba(0,0,0,0.22);">Connexion</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


</body>

</html>