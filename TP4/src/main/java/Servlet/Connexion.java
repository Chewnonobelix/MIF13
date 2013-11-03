package Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Connexion extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.close();
    } 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        //on redirige vers index.html
        response.sendRedirect("index.html");
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        //récupération du login
        String nom = request.getParameter("nom");

        if (nom.isEmpty())
        {
            //s'il n'y a rien dans la string on redirige vers index.html
            response.sendRedirect("index.html");
        }
        else
        {
            //Sinon on mets le login dans la session et on va vers le chat
            HttpSession session = request.getSession(true);
            session.setAttribute("nom", nom);
            response.sendRedirect("affichage.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "";
    }

}
