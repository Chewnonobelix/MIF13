<%-- 
    Document   : affichage
    Created on : 14 oct. 2013, 08:07:27
    Author     : BJ
--%>

<%@page import="Classes.Message"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<jsp:useBean id="cookie_tools" scope="application" class="Classes.CookieTools"/>

<%

    String nom = "lastModified";

    messages.compteurAffichage++;

    // on parcourt la liste des messages
    for(int i = 0; i < messages.nbMessagesStockes(); i++){
        
        // on affiche chaque message de la liste avec son utilisateur
        out.print(messages.getMessage(i).getUtilisateur() + " : ");
        out.print(messages.getMessage(i).getContenu() + "<br/><br/>");
    }


    // on récupère le cookie
    Cookie cookie = cookie_tools.getCookie(request.getCookies(), nom);

    // on le met à jour
    cookie.setValue(messages.tailleListeString());
    response.addCookie(new Cookie(nom, messages.tailleListeString()));

%>


