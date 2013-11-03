
<%@page import="Messages.Message"%>
<%@page import="javax.servlet.http.Cookie" %>
<jsp:useBean id="messages" scope="application" class="Messages.GestionMessages"/>

<%
    String message = request.getParameter("message");

    if(message != null && !message.isEmpty()){
        
        messages.ajouterMessage(new Message((String) session.getAttribute("nom"), message));
    }
        

%>