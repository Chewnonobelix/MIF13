<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <title>Chat</title>

        <link rel="stylesheet" type="text/css" href="style.css"  />

    </head>

    <body onload="recupererMessages()">

       <script type="text/javascript" src="ajax.js"></script>    
        
       <h2 class="titre">Chat de discussion</h2>

        <form  id="deconnexion" method="get" action="Logout">
            <div>
                <input type="submit" name="deconnexion" value="Déconnexion" />
            </div>
        </form>

        <div id="main">
            <table>
                <thead>
                    <tr align="left">
                        <th class="date"></th>
                        <th class="auteur"></th>
                        <th class="message"></th>
                    </tr>
                </thead>
                <tbody id="Messages">
                    <tr><td></td></tr>
                </tbody>
            </table>
            <a name="dernierMessage" > </a>
        </div>


        <div id="saisie">
            <fieldset>
                <legend>Message à envoyer</legend>
               
                <form action="" onsubmit="return stockerMessage('texte')">
                    <div>
                      <input type="text" id="texte"/>
                      <button>Envoyer</button>
                    </div>
                </form>
            </fieldset>
        </div>


    </body>
</html>