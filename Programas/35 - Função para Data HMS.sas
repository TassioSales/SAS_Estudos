data hora;
	horaAux = hms(14, 30, 45);
	
	
	hora = 09;
	minuto = 25;
	segundos = 60;
	
	horaOutro = hms(hora, minuto, segundos);
	
	format horaAux horaOutro time9.;
	
run;