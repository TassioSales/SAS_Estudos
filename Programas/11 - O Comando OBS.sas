/*Função obs serve para que voce limite o numero de 
informaçoes que voce deseja trazer de uma tabela*/

data work.shoes(obs=10);
	set sashelp.shoes;
run;

data work.shoes;
	set sashelp.shoes(obs=10);
run;