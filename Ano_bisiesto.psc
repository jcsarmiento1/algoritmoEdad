Algoritmo Ano_bisiesto
	
	Definir ano Como Entero
	Escribir "Por favor escriba un a�o";
	Leer ano
	Si ano mod 4 = 0 Entonces
		Si ano mod 100 = 0 Entonces
			Si ano mod 400 = 0 Entonces
				Escribir ano, " Es un a�o bisiesto";
			SiNo
				Escribir ano, " No es un a�o bisiesto";
			Fin Si
		SiNo
			Escribir ano, " Es un a�o bisiesto";
		Fin Si
	SiNo
		Escribir ano, " No es un a�o bisiesto";
	Fin Si
	
FinAlgoritmo
