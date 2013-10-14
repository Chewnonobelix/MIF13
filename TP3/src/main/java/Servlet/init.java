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

/**
 *
 * @author BJ
 */
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
    
        response.sendRedirect("index.html"); // on redirige vers l'index
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String nom = request.getParameter("nom");

        if (nom.isEmpty()) // si le nom est vide
        {
            response.sendRedirect("index.html"); // on redirige vers l'index
        }
        else
        {
            HttpSession session = request.getSession(true); // sinon on récupère le login
            session.setAttribute("nom", nom);

            response.sendRedirect("frames.html"); // et on redirige vers frames
        }
    }

    @Override
    public String getServletInfo() {
        return "";
    }

}
