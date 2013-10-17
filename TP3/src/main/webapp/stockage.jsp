<%-- 
    Document   : stockage
    Created on : 14 oct. 2013, 08:13:24
    Author     : BJ
--%>

<%@page import="Classes.Message"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<%
    // Permet de récupérer et stocker les messages de la méthode POST    
    
    // on récupère le message
    String messageRecu = request.getParameter("message");

    // si le message reçu contient bien quelquechose
    if(!messageRecu.isEmpty() && messageRecu != null){
        
        // on l'ajoute à la liste des messages
        messages.addMessage(new Message((String) session.getAttribute("nom"),messageRecu));
    }
        

%>

