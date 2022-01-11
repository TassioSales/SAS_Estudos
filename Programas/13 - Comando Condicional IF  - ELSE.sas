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
	
	if region = "Africa" then dt_emissao_nota = mdy(01,15,21);
	if region = "Asia" then dt_emissao_nota = mdy(02,10,21);
	else dt_emissao_nota = mdy(10,15,21);
		
	format dt_emissao_nota ddmmyy10.;
run;

data teste_nota;
	nota1 = 5;
	nota2 = 4;
	nota3 = 3;
	nota4 = 2;
	
	media = (nota1 + nota2 + nota3 + nota4) / 4;

	
	if media < 5 then resultado = "Reprovado";
	else if media > 5 and  media < 7 then resultado =  "Recuperacao";
	else resultado = "Recuperacao";
run;

proc sql;
 select distinct region from sashelp.shoes;
quit;