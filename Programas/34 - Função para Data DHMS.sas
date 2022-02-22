data datahora;
	DataHoraHoje = dhms(today(),15,30,25);
	
	DataHoraAleatorio = dhms('15may2021'd, 23,15,45);
	
	DataHoraOutro = dhms("06feb2021"d, 10,14,50);
	
	format DataHoraHoje DataHoraAleatorio DataHoraOutro datetime20.;
	
run;