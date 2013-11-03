package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Deconnexion extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.close();
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        Cookie cookie = Messages.Outils.getCookie(request.getCookies(), "lastModified");

        if(cookie != null) cookie.setMaxAge(0);

        HttpSession session = request.getSession(true);

        if(session.getAttribute("nom") != null) session.removeAttribute("username");

        //on redirige vers index.html
        response.sendRedirect("index.html");
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "";
    }

}
