/*Bibliotecas*/

libname Dados "/home/u59465888/Udemy/TabelasTB";

/*Criando tabela sas atravez da procedure SQL*/

proc sql;
	create table nome_da_biblioteca.nome_da_tabela as /*comando para criar tabela*/
	select campos_da_tabela /*selecionar os campos desejados separados por virgula*/
	from biblioteca.nome_da_tabela;  /*Realizar leitura da tabela desejada*/
quit;

proc sql;
	create table work.sapatos as
	select *
	from sashelp.shoes;
quit;

proc sql;
	create table Dados.sapatos as
	select *
	from sashelp.shoes;
quit;

proc sql;
	create table Dados.sapatos_2 as
	select Product, Sales, Inventory, Returns
	from sashelp.shoes;
quit;

proc sql;
	create table Dados.teste (nome varchar(30));
	insert into dados.teste values("Tassio Sales");
quit;