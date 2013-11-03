package Messages;

import javax.servlet.http.Cookie;

public class Outils {

    public static Cookie getCookie(Cookie[] tab, String cookie){

        if(tab != null){

            for(int i = 0; i < tab.length; i++) {
                
                if (tab[i].getName().equals(cookie))
                    
                    return tab[i];
            }
        }
        return null;
    }

}
