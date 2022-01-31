data texto;
	texto = "Tassio Sales";
	texto2 = "C:\Users\tassi\OneDrive - CESB - Centro de Educação Superior de Brasilia LTDA\Documentos\GitHub\SAS_Estudos\Programas";

	/*Função REVERSE*/
	
	funcao_reverse1 = reverse(texto);
	funcao_reverse2 = reverse(funcao_reverse1);
	funcao_reverse3 = reverse(texto2);
	coleta = substr(reverse(texto2), 1, 9);
	revert =  compress(reverse(coleta));
run;

data work.sapatos;
	set sashelp.shoes;
	if region = "Africa" then region = "";
	
	if region = "Asia" then sales =.;
run;

data filtros;
	set sapatos;
	if missing(region);
run;
