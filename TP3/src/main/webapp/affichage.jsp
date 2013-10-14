<%-- 
    Document   : affichage
    Created on : 14 oct. 2013, 08:07:27
    Author     : BJ
--%>

<%-- Affiche les messages et met à jour le cookie --%>

<%@page import="Classes.Message"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<jsp:useBean id="tools" scope="application" class="Classes.Tools"/>

<%

    String nom = "lastModified";

    messages.compteurAffichage+=1;

    for(int i = 0; i < messages.nbMessagesStockes(); i++){
        
        out.print(messages.getMessage(i).getUtilisateur() + " : ");
        out.print(messages.getMessage(i).getContenu() + "<br/><br/>");
    }


    Cookie cookie = tools.getCookie(request.getCookies(), nom);

    cookie.setValue(messages.tailleListeString());
    response.addCookie(new Cookie(nom, messages.tailleListeString()));

%>


