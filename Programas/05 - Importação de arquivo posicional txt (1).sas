data work.sapatos_posicional;
	infile "/home/u59465888/Udemy/Dados_Input/shoes_posicional.txt"
	lrecl=100
	truncover
	;
	input
		@01 Region $25.
		@26 Produto $14.
		@40 Subsidiaria $2.
		@52 Store 8.
		@61 Sales dollar8.
		@68 Inventory dollar8.
		@76 Returns dollar8.	
	;
run;