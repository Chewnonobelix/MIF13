<%-- 
    Document   : messages
    Created on : 14 oct. 2013, 08:11:43
    Author     : BJ
--%>


<%@page import="java.math.BigDecimal"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<jsp:useBean id="tools" scope="application" class="Classes.Tools"/>
<%
    String methode = request.getMethod();

    String nom = "lastModified";
    Cookie cookie =tools.getCookie(request.getCookies(), nom);

    boolean afficher_message = false;
    boolean stocker_message = false;

    int messages_client = 0;
    int messages_serveur = 0;

    
    if(methode.equals("GET")){

        
        if(cookie == null){
            Cookie nouveau_cookie = new Cookie(nom, ""+0);
            nouveau_cookie.setMaxAge(500);
            response.addCookie(nouveau_cookie);
        }

        else{

        
        messages_client = Integer.parseInt(cookie.getValue());
        
        messages_serveur = messages.nbMessagesStockes();

        
            if(messages_client < messages_serveur){
                afficher_message = true;
            }
            else{
                response.setStatus(304);
            } 
        }
    }
    
    else if(methode.equals("POST")){
        afficher_message = true;
        stocker_message = true;
    }
%>

    <% if(stocker_message){ %>
    <jsp:include page="stockage.jsp" />
    <% } %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="refresh" content="2" />
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