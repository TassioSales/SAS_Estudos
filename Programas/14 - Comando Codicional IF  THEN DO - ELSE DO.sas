/*Africa
Asia
Canada
Central America/Caribbean
Eastern Europe
Middle East
Pacific
South America
United States
Western Europe*/

data work.shoes;
	set sashelp.shoes;
	
	if region = "Africa" then do;
	   Representante = "Vermelho";
	   nota = 9.5;
	end;
	else if region = "Asia" then do;
	   Representante = "Roxo";
	   nota = 8.5;
	end;
	else do;
		Representante = "Azul";
		nota = 5.5;
	end;
run;
