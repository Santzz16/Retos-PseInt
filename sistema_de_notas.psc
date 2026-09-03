Algoritmo sistema_de_notas
	Definir notas, op, alumno Como Entero;
	Definir r Como Real;
	Dimensionar notas[10];
	
	Escribir "Ingrese la nota del alumno 1";
	Leer notas[1];
	r = notas[1];
	
	Escribir "Ingrese la nota del alumno 2";
	Leer notas[2];
	r = r + notas[2];
	
	Escribir "Ingrese la nota del alumno 3";
	Leer notas[3];
	r = r + notas[3];
	
	Escribir "Ingrese la nota del alumno 4";
	Leer notas[4];
	r = r + notas[4];
	
	
	Escribir "Ingrese la nota del alumno 5";
	Leer notas[5];
	r = r + notas[5];
	
	Escribir "Ingrese la nota del alumno 6";
	Leer notas[6];
	r = r + notas[6];
	
	Escribir "Ingrese la nota del alumno 7";
	Leer notas[7];
	r = r + notas[7];
	
	Escribir "Ingrese la nota del alumno 8";
	Leer notas[8];
	r = r + notas[8];
	
	Escribir "Ingrese la nota del alumno 9";
	Leer notas[9];
	r = r + notas[9];
	
	
	Escribir "Ingrese la nota del alumno 10";
	Leer notas[10];
	r = r + notas[10];
	
	r = r/10
	Escribir "El promedio de todos los alumnos es: ", r;
	
	Escribir "Desea saber el rendimiento de algun alumno?";
	Escribir "1) Si";
	Escribir "2) No";
	Leer op;
	
	Si op == 1 Entonces
		Escribir "Ingrese el numero del alumno: "
		Leer alumno;
		si	notas[alumno] >= 60 Entonces
			Escribir "El alumno ha ganado la clase.";
			
		SiNo
			Escribir "El alumno ha suspendido la clase.";
			
		FinSi
	FinSi
FinAlgoritmo
