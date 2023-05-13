Proceso Edad_Usuario
	Definir anoNacimiento Como Entero;
	Definir mesNacimiento Como Entero;
	Definir diaNacimiento Como Entero;
	Definir anoActual Como Entero;
	Definir mesActual Como Entero;
	Definir diaActual Como Entero;
	Definir validadorFechaActual Como Logico; 
	Definir validadorAno Como Entero;
	Definir numeroMes Como Entero;
	
	numeroMes = 0;
	anoActual = 2023;
	mesActual = 5;
	
	Escribir "Bienvenido";			
	Escribir "Teniendo en cuenta que estamos en 2023 del mes de mayo, especifique un dia del 12 al 31";
	Leer diaActual;
	Si diaActual >= 12 y diaActual <= 31 Entonces
		validadorFechaActual = Verdadero				
	SiNo
		validadorFechaActual = Falso
		Escribir "Dia incorrecto, vuelve a intentarlo en un rango de 12 a 31";
	FinSi		
	
	Si validadorFechaActual = Verdadero Entonces
		
		Escribir "Escriba su año de nacimiento entre 1920 y 2023";
		Leer anoNacimiento;
		Si anoNacimiento >= 1920 y anoNacimiento <= 2023 Entonces
			validadorAno = anoActual - anoNacimiento;
			Escribir "Escriba su mes de nacimiento";
			Leer mesNacimiento;
			Si mesNacimiento = 1 o mesNacimiento = 3 o mesNacimiento = 5 o mesNacimiento = 7 o mesNacimiento = 8 o mesNacimiento = 10 o mesNacimiento = 12 Entonces
				numeroMes = 31;			
			Fin Si
			Si mesNacimiento = 4 o mesNacimiento = 6 o mesNacimiento = 9 o mesNacimiento = 11 Entonces
				numeroMes = 30;			
			Fin Si
			Si mesNacimiento = 2 Entonces
				numeroMes = 28;			
			Fin Si
			//validar que tenga el rango del mes. 
			Si numeroMes = 28 o numeroMes = 30 o numeroMes = 31 Entonces
				Escribir "Escriba su dia de nacimiento";
				Leer diaNacimiento;
				Si diaNacimiento >= 1 y diaNacimiento <= numeroMes Entonces
					Si mesNacimiento > mesActual  Entonces
						validadorAno = validadorAno - 1;
					SiNo
						Si diaNacimiento = diaActual Entonces
							Escribir "Feliz cumpleaños";						
						Fin Si
						Si diaNacimiento > diaActual Entonces
							validadorAno = validadorAno - 1;						
						Fin Si
					Fin Si
					Escribir "Usted tiene: ", validadorAno, " años";
				SiNo
					Escribir "El dia es incorrecto, ingrese el dia 1 al ", numeroMes
				Fin Si
			SiNo
				Escribir "Mes incorrecto, ingrese mes del 1 al 12";
			Fin Si
		SiNo
			Escribir "Año incorrecto, por favor ingresa un año en el rango 1920 al 2023";
		Fin Si		
	Fin Si
	
FinProceso
