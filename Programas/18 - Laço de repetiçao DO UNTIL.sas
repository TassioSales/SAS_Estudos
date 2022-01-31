data shoes;
	set sashelp.shoes(keep= region sales);
	proc sort;by region;
run;


data shoes_soma(drop=Sales);
	do until(last.region);
		set shoes;
		by region;
		soma_vendas = sum(soma_vendas, sales);
	end;
	
	format soma_vendas dollar12.;
run;
