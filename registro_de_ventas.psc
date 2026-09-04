Algoritmo registro_de_ventas
	Definir cantidad, menu, ca, cantidad_productos, i, continuar Como Entero;
	Definir precio, p, monto, pago_f, capital Como Real;
	Definir nombre, codigo, nc Como Caracter;
	
	cantidad_productos = 10
	capital = 23000.00
	
	Dimensionar codigo[50];
	Dimensionar nombre[50];
	Dimensionar precio[50];
	Dimensionar cantidad[50];
	
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
		Escribir "===  REGISTRO TIENDITA ===";
		Escribir "1) Registrar Productos";
		Escribir "2) Realizar Venta";
		Escribir "3) Consultar";
		EScribir "4) CERRAR PROGRAMA";
		Leer menu;
		
		SI menu > 0 y menu < 5 Entonces
			Segun menu Hacer
				1:
					menu = 1;
					Mientras menu = 1 Hacer
						cantidad_productos = cantidad_productos + 1;
						Escribir "REGISTRO DE PRODUCTOS";
						Escribir "Ingrese nombre del producto";
						leer nc;
						nombre[cantidad_productos] = nc;
						
						Escribir "Ingrese Codigo del producto";
						Leer nc;
						codigo[cantidad_productos] = nc;
						
						Escribir "Ingrese Precio del producto";
						leer p;
						precio[cantidad_productos] = p;
						
						Escribir "Ingrese existencias del producto";
						leer c;
						cantidad[cantidad_productos] = c;
						
						Escribir "Se ha agregado exitosamente el producto";
						Escribir "DETALLES: ";
						EScribir "Nombre: ", nombre[cantidad_productos];
						EScribir "Codigo: ", codigo[cantidad_productos];
						EScribir "Precio: ", precio[cantidad_productos];
						EScribir "Existencias: ", cantidad[cantidad_productos];
						
						Escribir "1) Agregar otro producto";
						Escribir "2) Volver al menu principal";
						Leer menu;
						
						
					FinMientras
					
				2:
					menu = 1;
					Escribir "REALIZAR VENTA";
					Mientras menu = 1 Hacer
						
						monto = 0;
						
						Repetir
							RepetiR
								Escribir "Ingrese codigo de producto"
								Leer cn;
								Para i = 1 Hasta cantidad_productos Hacer
									si	codigo[i] == cn Entonces
										Escribir i, ") ", "Nombre: ", nombre[i], "| Precio: ", precio[i];
										monto = monto + precio[i];
										ca = 1
										cantidad[I] = cantidad[i] - ca;
										continuar = 3;
									SiNo
										Escribir "ERROR: CODIGO NO EXISTENTE";
										
									FinSi
								FinPara
							Hasta Que continuar = 3;
							
							Escribir "¿Desea agregar otro producto?"
							Escribir "1) si";
							Escribir "2) No";
							Leer continuar;
						Hasta Que continuar = 2; 
						
						
						si	continuar == 2 Entonces
							Si monto >= 400.00 Entonces
								pago_f = (25 * monto) / 100;
								
								Escribir "Se ha aplicado un descuento del 25% debido al precio de la compra ";
								Escribir "El precio final a pagar es: Q.", pago_f;
								Escribir "Ingrese c para completar la comprar";
								capital = capital + pago_f;
							SiNo
								Escribir "El precio final a pagar es: Q.", monto;
								Escribir "1) Completar la comprar";
								capital = capital + monto;
								Leer continuar;
								menu = 0;
							FinSi
						FinSi
						
					FinMientras
				3:
					menu = 0
					Escribir "CONSULTAR DATOS DE LA TIENDA";
					Escribir"CAPITAL TOTAL DE LA TIENDA: Q.", capital;
					Para i = 1 hasta cantidad_productos Hacer
						Escribir i, ") ", "Nombre: ", nombre[i]," | Codigo: ", codigo[i]," | Precio: ", precio[i], " | Existencias: " cantidad[i];
					FinPara
					Escribir "1) Volver al menu principal"
					Leer menu;
			FinSegun
		FinSi
	Hasta Que menu = 4
	
	
FinAlgoritmo
