package Messages;

import java.util.ArrayList;


public class GestionMessages {

    private ArrayList<Message> listeMessages; // stockage de la liste des messages

    
    public GestionMessages() {
        listeMessages = new ArrayList<Message>();
    }

    public void ajouterMessage(Message message){
        listeMessages.add(message);
    }

    
    public int nbMessagesStockes(){
        return listeMessages.size();
    }

    
    public String nbMessages(){
            return "" + listeMessages.size();
    }


    public Message getMessage(int i){
        if(!listeMessages.isEmpty())
            return listeMessages.get(i);
        else return null;
 
    }
}
