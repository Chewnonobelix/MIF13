package Classes;

import javax.servlet.http.Cookie;

/**
 *
 * @author BJ
 */
public class Tools {

    // fonction de recherche d'un cookie dans un tableau de cookies
    public static Cookie getCookie(Cookie[] cookies, String cookie){

        if(cookies != null){
           
            for(int i = 0; i < cookies.length; i++) {  //recherche du bon cookie
                if (cookies[i].getName().equals(cookie))
                    return cookies[i];
            }

        }

        return null;
    }

}

