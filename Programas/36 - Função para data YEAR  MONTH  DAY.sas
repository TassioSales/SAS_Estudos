data teste;
	dt = "22feb2022"d;
	hotaAgora = time();
	
	format dt date9.;
	
	ano = year(dt);
	mes = month(dt);
	dia = day(dt);
	
	hora = hour(hotaAgora);
	minuto = minute(hotaAgora);
	segundos = second(hotaAgora);
	
	anomes = year(dt) * 100 + month(dt);
	
	anomesAux = put(dt, yymmn6.);
run;