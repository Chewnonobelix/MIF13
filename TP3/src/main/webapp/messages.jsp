<%-- 
    Document   : messages
    Created on : 14 oct. 2013, 08:11:43
    Author     : BJ
--%>


<%@page import="java.math.BigDecimal"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<jsp:useBean id="cookie_tools" scope="application" class="Classes.CookieTools"/>
<%
       
    boolean afficher_message = false;  // booléens pour les actions à effectuer
    boolean stocker_message = false;   // dans affichage ou stockage
    int messages_client = 0;  // compteurs du nombre de messages
    int messages_serveur = 0;
    
    // on récupère la méthode du formulaire
    String methode = request.getMethod();

    // on récupère le cookie
    String nom = "lastModified";
    Cookie cookie = cookie_tools.getCookie(request.getCookies(), nom);

    if(methode.equals("GET")){  // si la méthode est GET

        
        if(cookie == null){   // on ajoute le cookie
            Cookie nouveau_cookie = new Cookie(nom, ""+0);
            nouveau_cookie.setMaxAge(500);
            response.addCookie(nouveau_cookie);
        }

        else{

        // on récupère le nombre de messages de chaque côté
        messages_client = Integer.parseInt(cookie.getValue());
        
        messages_serveur = messages.nbMessagesStockes();

            // s'il y a plus de message sur le serveur
            if(messages_client < messages_serveur){
                afficher_message = true;    // on affiche
            }
            else{
                response.setStatus(304);  // sinon erreur
            } 
        }
    }
    
    else if(methode.equals("POST")){    // si la méthode est POST
        
        afficher_message = true;   // on affiche
        stocker_message = true;    // et on stocke le message
    }
%>

    <% if(stocker_message){ %>
    <jsp:include page="stockage.jsp" />
    <% } %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="refresh" content="2" />
        <link rel="stylesheet" type="text/css" href="style.css" media="screen"/>
    <title>Chat-Room ___ooo(O.O)ooo___</title>
    </head>

    
        <body onload="document.location='#EnBas'">

        <h1>Mon chat à moi que j'ai</h1>
            
        <% 
            if(afficher_message){
        %>
        <jsp:include page="affichage.jsp" />
        <% } %>

            <a name="EnBas" />

        </body>
</html>