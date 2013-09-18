
function cree_echiquier(evt)
{
        svgdoc=document;
        node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"g");
        evt.appendChild(node);
		var bool = false;
		for(var j = 0; j<8;j++)
		{
			alert('Ligne ' + j);
			for(var i = 0; i<8;i++)
			{
					node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"rect");
					node.setAttribute("x",50*i);
					node.setAttribute("y",50*j);
					
					node.setAttribute("width","50");
					node.setAttribute("height","50");
					
					if(bool)
					{
						node.setAttribute("fill","lightgrey");
					}
					else
					{
						node.setAttribute("fill","white");
					}
					evt=svgdoc.getElementById("affiche");
					evt.appendChild(node);
					bool = !bool;
			}
			bool = !bool;
		}
}