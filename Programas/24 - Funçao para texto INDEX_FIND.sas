data texto;
	texto = "Eu Tassio Sales estou participando de um curso de programaçao SAS. 
			Tassio ira concluir o curso em breve.";
			
	/*funcao index*/
	
	localizaCurso =  index(texto, "curso");
	localizaNomes =  index(texto, "Tassio");
	
	/*Função Find*/
	localiza1 = find(texto, 'curso');
	localiza2 = find(texto, 'curso', "i");
	localiza3 = find(texto, 'curso', "i", 10);
run;