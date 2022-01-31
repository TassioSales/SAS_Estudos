data work.shoes(rename=product=Produto);
	set sashelp.shoes(rename=region=Regiao);
	rename sales = Vendas;	
run;

data work.shoes;
	set sashelp.shoes;
	
	rename sales = Vendas
		   product = Produto
	       region = Regiao
	       returns = retorno;
run;
