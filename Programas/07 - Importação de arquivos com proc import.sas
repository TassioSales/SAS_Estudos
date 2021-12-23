proc import datafile= '/home/u59465888/Udemy/Dados_Input/SHOES.csv'
			out = work.Sapatos
			dbms= csv replace;
			delimiter= ",";
			
run;

/*CARS.xlsx01"*/

proc import datafile= '/home/u59465888/Udemy/Dados_Input/CARS_Excel.xlsx'
			out = work.Sapatos
			dbms= xlsx replace;
			
			sheet="CARS_xlsx01";
			
run;

/*CARS.xlsx02*/

proc import datafile= '/home/u59465888/Udemy/Dados_Input/CARS_Excel.xlsx'
			out = work.Sapatos
			dbms= xlsx replace;
			
			sheet="CARS_xlsx02";
run;