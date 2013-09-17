var bool = false;

for(var i = 0; i < 8 ; i++)
{
	for(var j = 0; j < 8 ; j++)
	{
		if(bool)
		{
			include(rectangle_gris.svg);
			bool = false;
		}
		else
		{
			bool = true;
		}
	}
}