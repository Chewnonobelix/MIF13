function cree_echiquier(evt)
{
        svgdoc=evt.target.ownerDocument;
        node=svgdoc.createElement("g");
        node.setAttribute("id" , "affiche");
        ou=evt.target;
        ou.appendChild(node);
		var bool = false;
		for(var j = 0; j<8;j++)
		{
			for(var i = 0; i<8;i++)
			{
					node=svgdoc.createElement("rect");
					node.setAttribute("x",50*i);
					node.setAttribute("y",50*j);
					
					node.setAttribute("width","50");
					node.setAttribute("height","50");
					
					if(bool)
					{
						node.setAttribute("fill","lightgrey");
						bool = false;
					}
					else
					{
						node.setAttribute("fill","white");
						bool = true;
					}
					ou=svgdoc.getElementById("affiche");
					ou.appendChild(node);
				
			}
		}
}