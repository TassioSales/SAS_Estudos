/*PUT ele transforma uma variavel de numerico para caractere ou seja
ele aplica um formato caractere para uma variavel*/

/*INPUT ele transfoma o caractre para numerico*/


data work.shoes;
	set sashelp.shoes;
	
	Vendas = put(sales, dollar8.);
	
	valors_antes_da_virgula = scan(vendas, 1, ',');
	valor_antes_da_virgula _2 =  scan(put(sales, dollar8.),1,",")	
	Vendas_inteiro = input(vendas, dollar8.);
	
	dt = mdy(05,02,21);
	
	format Vendas_inteiro dollar8.
		   dt ddmmyy10.;
run;