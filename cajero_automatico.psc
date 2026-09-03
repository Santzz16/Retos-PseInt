Algoritmo cajero_automatico
	Definir i, op, menu, contraseñas, contraseña_verificacion, continuar Como Entero;
	Definir dpis, destinatario, nombres, encontrado Como Caracter;
	Definir saldos, monto, saldo_encontrado, saldo_destinatario Como Real;

	Dimensionar nombres[5];
	Dimensionar dpis[5];
	Dimensionar saldos[5];
	Dimensionar contraseñas[5];
	
	dpis[1] = "2450 89123 0301";
	nombres[1] = "Juan Perez";
	saldos[1] = 1500.50;
	contraseñas[1] = 1416;
	
	dpis[2] = "3012 45678 0101";
	nombres[2] = "María Gómez";
	saldos[2] = 4250.00;
	contraseñas[2] = 1476;
	
	dpis[3] = "1983 23456 0401";
	nombres[3] = "Carlos López";
	saldos[3] = 320.75;
	contraseñas[3] = 0987
	
	dpis[4] = "2765 11223 0201";
	nombres[4] = "Ana Martínez";
	saldos[4] = 12800.00;
	contraseñas[4] = 1676;
	
	dpis[5] = "2104 99887 1601";
	nombres[5] = "Luis Rodríguez";
	saldos[5] = 850.25;
	contraseñas[5] = 1674;
	
	Repetir
		Repetir
			Escribir "== CAJERO AUTOMATICO BI ==";
			Escribir "Selecciones su usuario: ";
	
			Para i<- 1 Hasta 5 Con Paso 1 Hacer
				Escribir i, ") ", nombres[i];
			Fin Para
	
			Leer op;
	
			si op >= 1 y op <= 5 Entonces
				Escribir "Escriba su contraseña por favor: ";
				Leer contraseña_verificacion;
				si contraseña_verificacion = contraseñas[op] Entonces
					
					Para i <- 1 Hasta 5 Con Paso 1 Hacer
						Si contraseña_verificacion == contraseñas[i] Entonces
							saldo_encontrado = saldos[i];
						FinSi
					FinPara
					Escribir "BIENVENID@ ", nombres[op];
					Escribir "SELECCIONE UNA OPCION:";
					Escribir "1) Consultar Saldo";
					Escribir "2) Retirar Dinero";
					Escribir "3) Hacer un Deposito";
					Escribir "4) Salir";
					Leer menu;
				
				SiNo
					Escribir "Opcion no valida";
				FinSi
			SiNo
				Escribir "ERROR: Seleccione una opcion valida";
			FinSi
		Hasta Que menu = 1 o menu = 2 o menu = 3
	
		Repetir
			Segun menu Hacer
				1:
					Escribir "=== MENU SALDO ===";
					Escribir "Su saldo total es de: Q.", saldos[op];
					Escribir "Seleccione 1 para salir";
					Leer menu;
					
				2:
					Escribir "=== MENU RETIRAR DINERO === ";
					Escribir "Ingrese la cantidad a retirar: ";
					Leer monto;
						
					Si monto <= saldos[op] Entonces
						saldos[op] = saldos[op] - monto;
						Escribir "Se han retirado Q.", monto, " a su cuenta."
						Escribir "Seleccione 1 para salir"
						Leer menu;
						
					SiNo
						Si monto < saldos[op] Entonces
							Escribir "ERROR: MONTO NO VALIDO";
							Escribir "Ingrese 1 para salir";
							Leer menu;
							
						SiNo
							Escribir"ERRO: El MONTO INGRESADO SUPERA SU SALDO", "- Q.", saldos[op], " -";
							Escribir"Ingrese 1 para salir";
							Leer menu;
						FinSi
					FinSi
					
				3:
					Escribir "=== MENU DEPOSITOS ===";
					Escribir "Ingrese DPI del destinatario - xxxx xxxxx xxxx -";
					Leer destinatario;
					 
					Para i <- 1 Hasta 5 Con Paso 1 Hacer
						Si destinatario == dpis[i] Entonces
							encontrado = nombres[i];
						FinSi
					FinPara
						
					Escribir "Se ha seleccionado a ", encontrado, " como destinatario.";
					Escribir "¿Desea continuar?"
					Escribir "1) Si";
					EScribir "2) No";
					Leer continuar;
					 
					Si continuar == 1 Entonces
						Escribir "INgrese la cantidad a depositar:";
						Leer monto;
						Para i <- 1 Hasta 5 Con Paso 1 Hacer
							si encontrado = nombres[i] Entonces
								saldo_destinatario = saldos[i];
								saldo_destinatario = saldo_destinatario + monto;
								saldos[i] = saldo_destinatario;
								saldo_encontrado = saldo_encontrado - monto;
								
								Escribir "Se ha realizado el deposito de manera exitosa";
								Escribir "Ingrese 1 para salir";
								Leer menu;
								
							FinSi
						FinPara
					SiNo
						Si continuar == 2 Entonces
							Escribir "Deposito Cancelado";
						FinSi
					FinSi
					
					
				De Otro Modo:
					Escribir "ERRROR: OPCION NO VALIDA";
					Escribir"Ingrese 1 para salir";
					Leer menu;
					
			Fin Segun
		Hasta Que menu = 1
	Hasta Que menu = 4;

FinAlgoritmo
