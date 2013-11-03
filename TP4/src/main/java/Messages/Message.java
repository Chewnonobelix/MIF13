package Messages;

import java.text.SimpleDateFormat;
import java.util.Date;


public class Message {

    private String auteur; // stockage de l'auteur du message
    private String contenu;    // sotckage du contenu du message
    private Date date;         // date d'arrivée du message
    
    public Message(String auteur, String contenu) {

        this.auteur = auteur;
        this.contenu = contenu;

        date = new Date(System.currentTimeMillis());
    }

    public String getContenu() {
        return contenu;
    }

    public String getAuteur() {
        return auteur;
    }

    public String getStringHeure() {
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        return sdf.format(date);
    }

}
