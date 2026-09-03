Algoritmo calculadora_con_menu
	Definir menu Como Entero;
	Definir suma, resta, multiplicacion, division, modulo, r, potencia Como Real;
	Definir continuar Como Caracter;
	
	Repetir
		menu = 2;
		Escribir "=== CALCULADORA ===";
		Escribir "1) Sumar";
		Escribir "2) Restar";
		Escribir "3) Multiplicar";
		Escribir "4) Dividir";
		Escribir "5) Potencia"
		Escribir "6) Modulo";
		Escribir "7) Salir";
		Escribir "Selecciones una opcion ";
		Leer menu;
		
		SI menu > 0 y menu < 8 Entonces
			Segun menu Hacer
				1:
					menu = 0;
					Repetir
						Escribir "==== SUMAR ===";
						Escribir "Ingrese un numero";
						Leer r;
						continuar = "s";
						Mientras continuar = "s" Hacer
							Escribir "Ingrese otro numero";
							Leer suma;
							r = r + suma;
							Escribir "¿Desea agregar otro numero a la suma?";
							Escribir "s";
							Escribir "n";
							Leer continuar;
						FinMientras
						
						Escribir "RESULTADO: ", r;
						Escribir "1) MENU PRINCIPAL";
						Escribir "2) Realizar otra suma";
						Leer menu;
					Hasta Que menu = 1
					
				2:
					menu = 0;
					Repetir
						Escribir "==== RESTAR ===";
						Escribir "Ingrese un numero";
						Leer r;
						continuar = "s";
						Mientras continuar = "s" Hacer
							Escribir "Ingrese otro numero";
							Leer resta;
							r = r - resta;
							Escribir "¿Desea agregar otro numero a la resta?";
							Escribir "s";
							Escribir "n";
							Leer continuar;
						FinMientras
						
						Escribir "RESULTADO: ", r;
						Escribir "1) MENU PRINCIPAL";
						Escribir "2) Realizar otra resta";
						Leer menu;
					Hasta Que menu = 1
					
				3:
					menu = 0;
					Repetir
						Escribir "==== MULTIPLICAR ===";
						Escribir "Ingrese un numero";
						Leer r;
						continuar = "s";
						Mientras continuar = "s" Hacer
							Escribir "Ingrese otro numero";
							Leer multiplicacion;
							r = r * multiplicacion;
							Escribir "¿Desea agregar otro numero a la multiplicacion?";
							Escribir "s";
							Escribir "n";
							Leer continuar;
						FinMientras
						
						Escribir "RESULTADO: ", r;
						Escribir "1) MENU PRINCIPAL";
						Escribir "2) Realizar otra multiplicacion";
						Leer menu;
					Hasta Que menu = 1
					
				4:
					menu = 0;
					Repetir
						Escribir "==== DIVIDIR ===";
						Escribir "Ingrese el numero a dividendo";
						Leer r;
						continuar = "s";
						Mientras continuar = "s" Hacer
							Escribir "Ingrese divisor ";
							Leer division;
							r = r / division;
							Escribir "¿Desea dividir el resultado entre otro numero?";
							Escribir "s";
							Escribir "n";
							Leer continuar;
						FinMientras
						
						Escribir "RESULTADO: ", r;
						Escribir "1) MENU PRINCIPAL";
						Escribir "2) Realizar otra division";
						Leer menu;
					Hasta Que menu = 1
					
				5: 
					menu = 0;
					Repetir
						Escribir "==== POTENCIA ===";
						Escribir "Ingrese un numero";
						Leer r;
						Si r >= 0 Entonces
							
							continuar = "s";
							Mientras continuar = "s" Hacer
								Escribir "Ingrese otro numero";
								Leer potencia;
								
								si potencia >= 0 Entonces
									r = r ^ potencia;
									Escribir "¿Desea potenciar el resultado?";
									Escribir "s";
									Escribir "n";
									Leer continuar;
									
								SiNo
									Escribir "ERRROR: NUMERO NO VALIDO";
								FinSi
							FinMientras
							
						SiNo
							Escribir "ERROR: NUMERO NO VALIDO";
							
						FinSi
						
						Escribir "RESULTADO: ", r;
						Escribir "1) MENU PRINCIPAL";
						Escribir "2) Realizar otra potencia";
						Leer menu;
					Hasta Que menu = 1	
					
				6:
					menu = 0;
					Repetir
						Escribir "==== MODULO ===";
						Escribir "Ingrese dividendo";
						Leer r;
						continuar = "s";
						Mientras continuar = "s" Hacer
							Escribir "Ingrese divisor";
							Leer modulo;
							r = r MOD modulo;
							Escribir "¿Desea agregar otro numero a la division?";
							Escribir "s";
							Escribir "n";
							Leer continuar;
						FinMientras
						
						Escribir "RESULTADO: ", r;
						Escribir "1) MENU PRINCIPAL";
						Escribir "2) Hallar otro residuo";
						Leer menu;
					Hasta Que menu = 1
					
					
			FinSegun
			
		SiNo
			Escribir "ERROR: OPCION NO VALIDA";
		FinSi
	Hasta Que menu = 7
FinAlgoritmo
