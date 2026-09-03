Algoritmo adivina_el_numero
	Definir num, r Como Entero;
	num = aleatorio(1, 10);

	Repetir
		Escribir "=== ADIVINA EL NUMERO del 1 al 10 ===";
		Escribir "Ingresa un numero: ";
		Leer r;
		
		Si r > num Entonces
			Escribir "El numero es menor que ", r;
			
		SiNo
			Si r < num Entonces
				Escribir "El numero es mayor que, ", r;
			FinSi
		FinSi
	Hasta Que r == num;
	
	Escribir "Felicidades has adivinado el numero"
	
FinAlgoritmo
