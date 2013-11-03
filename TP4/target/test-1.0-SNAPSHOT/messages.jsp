
<%@page import="Messages.Message"%>

<jsp:useBean id="messages" scope="application" class="Messages.GestionMessages"/>
<jsp:useBean id="cookie_tools" scope="application" class="Messages.Outils"/>

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
    
   
    //teste de l'existence du cookie, création si nécessaire
    if(cookie == null){
        Cookie nouveau_cookie = new Cookie(nom, messages.nbMessages());
        response.addCookie(nouveau_cookie);
        response.setStatus(204);
        cookie = nouveau_cookie;
    }

    //teste la méthode utilisée
    if(methode.equalsIgnoreCase("get")){

        // on récupère le nombre de messages de chaque côté
        messages_client = Integer.parseInt(cookie.getValue());
        
        messages_serveur = messages.nbMessagesStockes();

        // s'il y a plus de message sur le serveur
        if(messages_client < messages_serveur){
            afficher_message = true;  // on affiche
            response.addCookie(new Cookie(nom, messages.nbMessages()));
        }
        else
            response.setStatus(204); // sinon erreur
    }
    else if(methode.equalsIgnoreCase("post")){  // si la méthode est POST
        stocker_message = true;   // on stocke le message
    }

%>

<% if(stocker_message){ %> 

    <jsp:include page="stockage.jsp" /> <% } %>

<% if(afficher_message){%>

    <%@page contentType="text/xml" pageEncoding="UTF-8" %>

    <Messages>
        <%for(int i = messages_client; i < messages_serveur; i++){%>
        <Message>
            <heure><%= messages.getMessage(i).getStringHeure() %></heure>
            <Auteur><%= messages.getMessage(i).getAuteur() %></Auteur>
            <Texte><%= messages.getMessage(i).getContenu() %></Texte>
        </Message>
        <%}%>
    </Messages>
    
<%}%>
