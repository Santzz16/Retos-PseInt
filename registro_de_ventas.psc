Algoritmo registro_de_ventas
	Definir cantidad, menu,  cantidad_productos Como Entero;
	Definir precio Como Real;
	Definir nombre, codigo Como Caracter;
	
	
	Dimensionar Codigo[10];
	Dimensionar nombre[10];
	Dimensionar precio[10];
	Dimensionar cantidad[10];
	
	codigo[1] = "PRD-001";
	nombre[1] = "Arroz blanco (1 kg)";
	precio[1] = 12.00;
	cantidad[1] = 25;
	
	codigo[2] = "PRD-002";
	nombre[2] = "Frijol negro (1 kg)";
	precio[2] = 15.00;
	cantidad[2] = 30;
	
	codigo[3] = "PRD-003";
	nombre[3] = "Aceite vegetal (1 L)";
	precio[3] = 22.00;
	cantidad[3] = 18;
	
	codigo[4] = "PRD-004";
	nombre[4] = "Azúcar refinada (1 kg)";
	precio[4] = 8.5;
	cantidad[4] = 40;
	
	codigo[5] = "PRD-005";
	nombre[5] = "Café molido (500 g)";
	precio[5] = 35.00;
	cantidad[5] = 35;
	
	codigo[6] = "PRD-006";
	nombre[6] = "Leche entera (1 L)";
	precio[6] = 18.00;
	cantidad[6] = 12;
	
	codigo[7] = "PRD-007";
	nombre[7] = "Leche entera (1 L)";
	precio[7] = 14.00;
	cantidad[7] = 24;
	
	codigo[8] = "PRD-008";
	nombre[8] = "Sal yodada (1 kg)";
	precio[8] = 6.00;
	cantidad[8] = 50;
	
	codigo[9] = "PRD-009";
	nombre[9] = "Pasta para sopa (200 g)";
	precio[9] = 5.00;
	cantidad[9] = 35;
	
	codigo[10] = "PRD-010";
	nombre[10] = "Jabón de baño (barra)";
	precio[10] = 7.50;
	cantidad[10] = 28;
	
	Repetir
		Escribir "=== REGISTRO DE VENTAS ===";
		Escribir "1) Registrar Productos";
		Escribir "2) Realizar Venta";
		Escribir "3) Consultar";
		EScribir "4) CERRAR PROGRAMA";
		Leer menu;
		
		SI menu > 0 y menu < 5 Entonces
			Segun menu Hacer
				1:
					menu = 0;
					cantidad_productos = 0;
					Mientras menu = 0 Hacer
						cantidad_productos = cantidad_productos + 1;
						codigo[cantidad_productos];
						nombre[cantidad_productos];
						precio[cantidad_productos];
						cantidad[cantidad_productos];
						Escribir "REGISTRO DE PRODUCTOS";
						Escribir "Ingrese nombre del producto";
					FinMientras
			FinSegun
		FinSi
	Hasta Que menu = 1
	
	
FinAlgoritmo
