
function cree_echiquier(evt)
{
        svgdoc=document;
        isis=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"g"); //noeud SVG "g"
        evt.appendChild(isis);
		var bool = false;
		for(var j = 0; j<8;j++)
		{
			for(var i = 1; i<9;i++)
			{
					var node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"rect");
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
					isis.appendChild(node);
					
					bool = !bool;
			}
			bool = !bool;
		}
		
		for(var re=1;re<9;re++)
		{
			var node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"text");
			node.setAttribute("x",50*re);
			node.setAttribute("y",450);
			
			node.setAttribute("width","50");
			node.setAttribute("height","50");
			
			node.appendChild(svgdoc.createTextNode(''+re));
			isis.appendChild(node);
		}
		
		var bastet = new Array("H","G","F","E","D","C","B","A");
		
		for(var re=0;re<8;re++)
		{
			var node=svgdoc.createElementNS("http://www.w3.org/2000/svg" ,"text");
			node.setAttribute("x",0);
			node.setAttribute("y",50*(re+1));
			
			node.setAttribute("width","50");
			node.setAttribute("height","50");
			node.appendChild(svgdoc.createTextNode(bastet[re]));
			isis.appendChild(node);
		}
		
		
}