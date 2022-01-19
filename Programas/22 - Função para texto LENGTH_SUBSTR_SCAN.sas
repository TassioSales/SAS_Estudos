data work.carros;
	set sashelp.cars;
	MarcaTipoInvoiceCATX =  catx(" / ", make, type, put(invoice, dollar8.));
	dt = mdy(01,02,2021);
	format dt date9.;
	/*Comando Lenght , captura o tamnho da variavel*/
	
	tamanho =  length(MarcaTipoInvoiceCATX);
	
	/*Comando Substr, extrai parte especifica do texto*/
	
	NomeMes = substr(put(dt, date9.),3,3);
	Valor = substr(MarcaTipoInvoiceCATX, length(MarcaTipoInvoiceCATX) -7, 7);
	
	/*Comando Scan, extrai parte expecifica do texto */
	marca =  scan(MarcaTipoInvoiceCATX,1, "/" );
	tipo =  scan(MarcaTipoInvoiceCATX,2, "/" );
run;