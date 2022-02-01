data teste;
	
	/*Today - dta Atual*/
	Data_Atual = today();
	
	/*Datetime - Date e Hora*/
	DataHora_Atual =  datetime();
	
	/*Time - Hora Atual*/
	Hora_Atual = time();
	
	format Data_Atual date9.
		   DataHora_Atual datetime20.
		   Hora_Atual time9.
	;
run;