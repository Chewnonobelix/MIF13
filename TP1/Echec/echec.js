
function cree_echiquier(evt)
{
        var svgdoc=document;
        var isis=svgdoc.createElementNS("http://www.w3.org/2000/svg", "g");
		isis.setAttribute("z-index", "-1");

		evt.appendChild(isis);
		
		var hauteurFenetre = window.innerWidth;
		var taillePieces = hauteurFenetre/20;
		var bool = false;
		for(var j = 0; j<8;j++)
		{
			var col = 'a';
			for(var i = 1; i<9;i++)
			{
					var node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"rect");
					node.setAttribute("x",taillePieces*i);
					node.setAttribute("y",taillePieces*j);
					
					node.setAttribute("width","" + taillePieces);
					node.setAttribute("height","" + taillePieces);
					node.setAttribute("id",col+j);
					
					if(bool)
					{
						node.setAttribute("fill","lightgrey");
					}
					else
					{
						node.setAttribute("fill","white");
					}
					isis.appendChild(node);
					
					bool = !bool;
					
					col = String.fromCharCode(col.charCodeAt(0)+1);
			}
			bool = !bool;
		}
		
		for(var re=1;re<9;re++)
		{
			var node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"text");
			node.setAttribute("x",taillePieces*re);
			node.setAttribute("y",9*taillePieces);
			
			node.setAttribute("width","" + taillePieces);
			node.setAttribute("height","" + taillePieces);
			
			node.appendChild(svgdoc.createTextNode(''+re));
			isis.appendChild(node);
		}
		
		var bastet = new Array("H","G","F","E","D","C","B","A");
		
		for(var re=0;re<8;re++)
		{
			var node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"text");
			node.setAttribute("x",0);
			node.setAttribute("y",taillePieces*(re+1));
			
			node.setAttribute("width","" + taillePieces);
			node.setAttribute("height","" + taillePieces);
			node.appendChild(svgdoc.createTextNode(bastet[re]));
			isis.appendChild(node);
		}
		
}

function generer_pions(evt)
{          	 
		dossierImages='images/';
        var pieces =["Tour", "Canasson", "Fou", "Dame", "Roi", "Fou", "Canasson", "Tour"];
        var nomPiece = "";
		var decalage = "";
		var hauteurFenetre = window.innerWidth;
		var taillePieces = "" + hauteurFenetre/20;
		
		
		for(var j = 0; j<8;j++)
		{
		
			for(var i = 0; i<8;i++)
			{
					var node = document.createElement("img");
					node.style.position = "absolute";
					node.setAttribute("width",taillePieces);
					node.setAttribute("height",taillePieces);
					
					if(j == 1){
						
						nomPiece = "images/" + pieces[i] + "_noir.png";
						decalage = -650 + taillePieces/6 + taillePieces*i + "px";
						
						node.setAttribute("src",nomPiece);
						node.style.marginTop = (j-1)*taillePieces + "px";
						node.style.marginLeft = decalage;
					}
					else if(j == 2){
						
						nomPiece = "images/" + "Pion" + "_noir.png";
						decalage = -650 + taillePieces/6 + taillePieces*i + "px";
						
						node.setAttribute("src",nomPiece);
						node.style.marginTop = (j-1)*taillePieces + "px";
						node.style.marginLeft = decalage;
					}
					else if(j == 6){
						
						nomPiece = "images/" + "Pion" + "_blanc.png";
						decalage = -650 + taillePieces/6 + taillePieces*i + "px";
						
						node.setAttribute("src",nomPiece);
						node.style.marginTop = (j)*taillePieces + "px";
						node.style.marginLeft = decalage;
					}
					
					else if(j == 7){
						
						nomPiece = "images/" + pieces[i] + "_blanc.png";
						decalage = -650 + taillePieces/6 + taillePieces*i + "px";
						
						node.setAttribute("src",nomPiece);
						node.style.marginTop = (j)*taillePieces + "px";
						node.style.marginLeft = decalage;
					}
					
					document.getElementById("body").appendChild(node);

			}
			
		}
		
}

