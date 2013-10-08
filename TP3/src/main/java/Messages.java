/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author chewnononbelix
 */

import java.util.ArrayList;
        
public class Messages 
{
    private ArrayList<String> m_listMessages;

    public Messages() 
    {
    }

    public ArrayList<String> getListMessages() 
    {
        return m_listMessages;
    }

    public void setListMessages(ArrayList<String> listMessages) 
    {
        this.m_listMessages = listMessages;
    }
    
    public void addMessage(String message)
    {
        getListMessages().add(message);
    }
}
