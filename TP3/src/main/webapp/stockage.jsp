<%-- 
    Document   : stockage
    Created on : 14 oct. 2013, 08:13:24
    Author     : BJ
--%>

<%-- Réception et mémorisation des messages envoyés par POST--%>

<%@page import="Classes.Message"%>
<jsp:useBean id="messages" scope="application" class="Classes.GestionMessages"/>
<%
    String messageRecu = request.getParameter("message");

    if(messageRecu != null && !messageRecu.isEmpty()){
        
        messages.addMessage(new Message((String) session.getAttribute("nom"),messageRecu));
    }
        

%>

