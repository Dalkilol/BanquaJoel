<%-- 
    Document   : clientMsg
    Created on : 11 avr. 2019, 13:42:27
    Author     : ESIC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.bank.dao.MsgDao"%>
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
    <body style="#eff9f1">
        <%@include file="menuClient.jsp" %>
        <div class="container">
            <div class="row bg-white">

                <div class="col-sm">
                    <br>
                    <p>
                        <a class="btn btn-primary" data-toggle="collapse" href="#MsgSent" role="button" aria-expanded="false" aria-controls="collapseExample">
                            Boîte de réception
                        </a>
                        <a class="btn btn-primary" data-toggle="collapse" href="#MsgSent" role="button" aria-expanded="false" aria-controls="collapseExample">
                            Messages Envoyés
                        </a>
                    </p>
                    <div class="collapse" id="MsgSent">
                        <div class="card card-body">
                            <table class="table">


                                <tbody>
                                    <c:forEach items ="${messages}" var="m">
                                        <tr>

                                            <td>${m.contenu}</td>

                                        </tr>  
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>






                </div>
               

            </div>
            <div class="row bg-white justify-content-end">

                <div class="col-8">
                    
                        <h3>Envoyez un message à votre conseiller en saisissant du texte ci-dessous.</h3>
                   



                    <form action ="MessagerieServlet" method="POST">

                        <div class="form-group text-right">
                            <div class="card  box-shadow" style="width: 51rem;height: 25rem;">


                                <div class="form-group">
                                    <textarea class="form-control" rows="24" id="comment" name="msgClient"></textarea>
                                </div>

                            </div>
                        </div>
                        <div class="form-group text-right mr-3">
                            <button type="submit" class="btn btn-primary btn-raised " style="background-color: #bae0be">Envoyer</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </body>
</html>
