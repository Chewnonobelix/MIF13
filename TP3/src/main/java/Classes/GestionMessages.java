package Classes;

/**
 *
 * @author Chewnonobelix
 */
import java.util.ArrayList;

/**
 * Classe qui gère les messages
 */
public class GestionMessages {

    private ArrayList<Message> m_listeMessages; /** stockage de la liste des messages */

    public int compteurAffichage; // sert à tester que l'affichage ne se fait pas plusieurs fois

    public GestionMessages() {
        m_listeMessages = new ArrayList<Message>();
        compteurAffichage = 0;
    }

    public void addMessage(Message message){
        m_listeMessages.add(message);
    }

   
    public int nbMessagesStockes(){
            return m_listeMessages.size();
    }

    public String tailleListeString(){
            return "" + m_listeMessages.size();
    }

    
    public ArrayList<Message> getListeMessages() {
        return m_listeMessages;
    }

    
    public Message getLastMessage(){
        return getMessage(nbMessagesStockes());
    }

  
    public Message getMessage(int i){
        if(!m_listeMessages.isEmpty())
            return m_listeMessages.get(i);
        else
            return new Message("Bot","Bienvenue !");
 
    }


}
