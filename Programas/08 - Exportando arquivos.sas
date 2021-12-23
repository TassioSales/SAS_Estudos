/*Exportando Arquivo Excel*/

proc export data=sashelp.air
	outfile="/home/u59465888/Udemy/Dados_Input/air_2.xlsx"
	dbms= xlsx
	replace;
run;

/*Exportando arquivo CSV*/
proc export data=sashelp.air
	outfile="/home/u59465888/Udemy/Dados_Input/air_2.csv"
	dbms= csv
	replace;
run;


/*Exportando arquivo CSV com delimitador*/
proc export data=sashelp.air
	outfile="/home/u59465888/Udemy/Dados_Input/air_3.csv"
	dbms= csv
	replace;
	
	delimiter=';';
run;