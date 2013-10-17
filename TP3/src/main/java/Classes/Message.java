package Classes;

/**
 *
 * @author BJ
 */
public class Message {

    private String utilisateur;
    private String contenu;
    private int id; /** l'identifiant du message */

   // Constructeur
    
    public Message(String utilisateur, String contenu) {
        this.utilisateur = utilisateur;
        this.contenu = contenu;
    }

    
    // Accesseurs et mutateurs de la classe
    
    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public String getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(String utilisateur) {
        this.utilisateur = utilisateur;
    }

    public int getId() {
        return id;
    }



   
}
