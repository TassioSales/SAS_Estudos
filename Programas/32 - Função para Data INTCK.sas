data funcao_intck;
	set sashelp.shoes;
	if region = "Africa" then dt_ini = mdy(01,25,2021);
	if region = "Asia" then dt_ini = mdy(02,01,2021);
	if region = "Canada" then dt_ini = mdy(03,01,2021);
	if region = "Central America/Caribbean" then dt_ini = mdy(04,01,2021);
	if region = "Eastern Europe" then dt_ini = mdy(05,01,2021);
	if region = "Middle East" then dt_ini = mdy(06,01,2021);
	if region = "Pacific" then dt_ini = mdy(07,01,2021);
	if region = "South America" then dt_ini = mdy(08,01,2021);
	if region = "United States" then dt_ini = mdy(09,01,2021);
	if region = "Western Europe" then dt_ini = mdy(10,01,2021);
	
	dt_final = intnx("month", dt_ini,2);
		
	format dt_ini dt_final date9.;
	
	dif_meses = intck("month", dt_ini, dt_final);
	
	dif_dias = intck("day", dt_ini, dt_final);
run;

/*

	Africa
	Asia
	Canada
	Central America/Caribbean
	Eastern Europe
	Middle East
	Pacific
	South America
	United States
	Western Europe
*/

proc sql;
	select distinct region from sashelp.shoes;
quit;