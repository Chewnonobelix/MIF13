<%-- 
    Document   : stockage
    Created on : 14 oct. 2013, 08:13:24
    Author     : BJ
--%>

<%@page import="Classes.Message"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<%
    // Permet de r�cup�rer et stocker les messages de la m�thode POST    
    
    // on r�cup�re le message
    String messageRecu = request.getParameter("message");

    // si le message re�u contient bien quelquechose
    if(!messageRecu.isEmpty() && messageRecu != null){
        
        // on l'ajoute � la liste des messages
        messages.addMessage(new Message((String) session.getAttribute("nom"),messageRecu));
    }
        

%>

