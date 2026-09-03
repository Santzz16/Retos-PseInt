Algoritmo conversor_multiple
	Definir millas, km, farenheit, celsius, metros, pies, r Como Real;
	Definir menu Como Entero;
	Repetir
		Escribir "=== CONVERSOR MULTIPLE ===";
		Escribir "Seleccione una opcion: ";
		Escribir "1) Kilometros - MIllas";
		Escribir "2) Celsius - Fahrenheit";
		Escribir "3) Metros - Pies";
		Escribir "4) Salir";
		Leer menu;
		Si menu > 0 y menu < 4 Entonces
			Repetir
				Segun menu Hacer
					1:
						Escribir "=== Millas - Kilometros ===";
						Escribir "Seleccione una opcion: ";
						Escribir "1) Millas a Kilometros";
						Escribir "2) Kilometros a Millas";
						Leer menu;
						
						SI menu > 0 y menu < 3 Entonces
							Segun menu Hacer
								1:
									menu = 0;
									Repetir
										Escribir "=== MILLAS A KILOMETROS ===";
										Escribir "Ingrese Millas: ";
										Leer millas;
										
										r = millas * 1.609344;
										
										Escribir millas, " millas son ", r, "kilometros.";
										Escribir "Ingrese 1 para salir";
										Leer menu;
									Hasta Que menu = 1
									
								2:
									Repetir
										menu = 0;
										Escribir "=== KILOMETROS A MILLAS ===";
										Escribir "Ingrese Kilometros: ";
										Leer Kilometros;
										
										r = kilometros / 0.6213712;
										
										Escribir kilometros, " kilometros son ", r, " millas.";
										Escribir "Ingrese 1 para salir";
										Leer menu;
									Hasta Que menu = 1;
									
							FinSegun
						SiNo
							Escribir "ERROR: OPCION NO VALIDA";
							Escribir "Ingrese 1 para salir";
							Leer menu;
							
						FinSi
						
					2:
						Escribir "=== CELSIUS - Fahreheit===";
						Escribir "Seleccione una opcion: ";
						Escribir "1) Celsius a Fahreheit";
						Escribir "2) Fahrenheit a Celsius";
						Leer menu;
						
						SI menu > 0 y menu < 3 Entonces
							Segun menu Hacer
								1:
									menu = 0;
									Repetir
										Escribir "=== CELSIUS A FAHRENHEIT ===";
										Escribir "Ingrese grados Celsius: ";
										Leer celsius;
										
										r = (celsius * 1.8) + 32;
										
										Escribir celsius, " grados Celsius son ", r, " grados Fahrenheit.";
										Escribir "Ingrese 1 para salir";
										Leer menu;
									Hasta Que menu = 1
									
								2:
									Repetir
										menu = 0;
										Escribir "=== FAHRENHEIT A CELSIUS ===";
										Escribir "Ingrese grados Fahrenheit: ";
										Leer fahrenheit;
										
										r = (fahrenheit - 32) / 18;
										
										Escribir fahrenheit, " grados Fahrenheit son ", r, " grados Celsius.";
										Escribir "Ingrese 1 para salir";
										Leer menu;
									Hasta Que menu = 1;
									
							FinSegun
						SiNo
							Escribir "ERROR: OPCION NO VALIDA";
							Escribir "Ingrese 1 para salir";
							Leer menu;
							
						FinSi
						
					3:
						Escribir "=== METROS - PIES ===";
						Escribir "Seleccione una opcion: ";
						Escribir "1) Metros a Pies";
						Escribir "2) Pies a Metros";
						Leer menu;
						
						SI menu > 0 y menu < 3 Entonces
							Segun menu Hacer
								1:
									menu = 0;
									Repetir
										Escribir "=== METROS A PIES ===";
										Escribir "Ingrese metros: ";
										Leer metros;
										
										r = metros * 3.2808;
										
										Escribir metros, " metos son ", r, " pies.";
										Escribir "Ingrese 1 para salir";
										Leer menu;
									Hasta Que menu = 1
									
								2:
									Repetir
										menu = 0;
										Escribir "=== PIES A METROS ===";
										Escribir "Ingrese pies: ";
										Leer pies;
										
										r = pies * 0.3048
										
										Escribir pies, " pies son ", r, " metros.";
										Escribir "Ingrese 1 para salir";
										Leer menu;
									Hasta Que menu = 1;
									
							FinSegun
						SiNo
							Escribir "ERROR: OPCION NO VALIDA";
							Escribir "Ingrese 1 para salir";
							Leer menu;
							
						FinSi
						
				Fin Segun
			Hasta Que menu = 1;
		SiNo
			
			Escribir "ERROR: OPCION NO VALIDA";
		FinSi
	Hasta Que menu = 4;
FinAlgoritmo
