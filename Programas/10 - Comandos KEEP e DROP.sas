/*KEEP mantem as variaveis selecioanda*/
data work.shoes;
	set sashelp.shoes(keep = product);
run;

/*DROP retira a variavel selecionada*/
data work.shoes;
	set sashelp.shoes(drop = product);
run;

data work.shoes;
	set sashelp.shoes;
	keep
		product
		region
		sales
		returns
	;
run;

data work.shoes;
	set sashelp.shoes;
	drop
		product
		region
		sales
	;
run;