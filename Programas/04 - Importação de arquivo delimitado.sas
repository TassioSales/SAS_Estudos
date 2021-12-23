data work.sapatos;
	infile '/home/u59465888/Udemy/Dados_Input/SHOES.csv'
	lrecl= 79
	delimiter=","
	missover
	dsd
	firstobs=2
	;
	input
		Regiao		: $char25.
		produto		: $char14.
		Subsidiary 	: $char14.
		Stores 		: best2.
		Sales		: dollar10.
		Inventory 	: dollar10.
		Retorns		: dollar7.
	;
run;