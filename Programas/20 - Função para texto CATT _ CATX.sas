data work.carros(keep=MarcaTipoInvoiceCATT);
	set sashelp.cars;
	
	/*A função CATT concatena sem adicionar sem delimitador*/
	
	MarcaTipoInvoiceCATT = catt(make, type, put(invoice, dollar8.));
run;

data work.carros_dois(keep=MarcaTipoInvoiceCATX);
	set sashelp.cars;
	
	/*A função CATX concatena sem adicionar com delimitador*/
	
	MarcaTipoInvoiceCATX = catx("-", make, type, put(invoice, dollar8.));
run;

data work.carros(keep=MarcaTipoInvoiceCATT MarcaTipoInvoiceCATX);
	set sashelp.cars;
	
	/*A função CATT concatena sem adicionar sem delimitador*/
	
	MarcaTipoInvoiceCATT = catt(make, type, put(invoice, dollar8.));
	
	/*A função CATX concatena sem adicionar com delimitador*/
	
	MarcaTipoInvoiceCATX = catx("-", make, type, put(invoice, dollar8.));
run;
