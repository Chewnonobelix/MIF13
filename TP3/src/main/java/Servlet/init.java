package Servlet;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class init extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.close();
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //redirection vers la page index.html
        response.sendRedirect("index.html");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        //récupération du login
        String nom = request.getParameter("nom");

        if (nom.isEmpty())
        {
            // Erreur, le nom est vide, on redirige vers la page index.html
            response.sendRedirect("index.html");
        }
        else
        {
            //On sauvegarde le login dans la session
            HttpSession session = request.getSession(true);
            session.setAttribute("nom", nom);

            //redirection vers la page en frames
            response.sendRedirect("frames.html");
        }
    }

}

