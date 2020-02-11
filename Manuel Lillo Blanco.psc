SubProceso funcion9( )
	Definir datos, nombre, apellido, fono, mail como Caracter;
	Definir N,i,j como entero;
	Escribir "Ingrese la cantidad de alumnos del curso full stack java";
	Leer N;
	Dimension datos[N,4];
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del alumno N�", i+1;
		Leer nombre;
		datos[i,0]<-nombre;
		Escribir "Ingrese el apellido del alumno N�", i+1;
		Leer apellido;
		datos[i,1]<-apellido;
		Escribir "Ingrese el fono del alumno N�", i+1;
		Leer fono;
		datos[i,2]<-fono;
		Escribir "Ingrese el mail del alumno N�", i+1;
		Leer mail;
		datos[i,3]<-mail;
	FinPara
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir sin saltar "[",datos[i,j],"]";
		FinPara
		Escribir "";
	FinPara
	
	
	Esperar Tecla;
FinSubProceso

SubProceso funcion8( )
	Definir N,i, cont como Entero;
	Definir alumnos, alumno como Caracter;
	
	Escribir "Ingrese el tama�o del arreglo";
	Leer N;
	
	Dimension alumnos[N];
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Escribir "Ingrese al alumno N�",i+1;
		Leer alumno;
		alumnos[i]<-alumno;
	FinPara
	
	cont<-1;
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Escribir sin saltar alumnos[i],",";
		si i=4*cont entonces
			Escribir "";
			cont<-cont+1;
		FinSi
	FinPara
	Esperar Tecla;
	
	
FinSubProceso

SubProceso funcion7( )
	Definir i,j, conteo, contador como Entero;
	Definir nombre,nombres como Caracter;
	Dimension nombres[10];
	
	conteo<-0;
	contador<-0;
	
	
	Escribir "Ingrese 10 nombres";
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Leer nombre;
		nombres[i]<-Minusculas(nombre);
	FinPara
	
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		
		Para j<-i+1 Hasta 9 Con Paso 1 Hacer
			si nombres[i]=nombres[j] entonces
				conteo<-conteo+1;
				contador<-contador+1;
				nombres[j]<-convertiratexto(contador); //borra el segundo valor igual para no mostrarlo m�s de una vez si es que existen m�s de 2.
			FinSi
		FinPara
		si conteo>=1 entonces
			Escribir nombres[i];
		FinSi
		conteo<-0;
	FinPara
	
	Si contador<1 entonces
		Escribir "No existen nombres repetidos";
	FinSi
	
	Esperar Tecla;
FinSubProceso

SubProceso funcion6( )
	Definir nombre como Caracter;
	Definir contador como Entero;
	
	contador<-0;
	nombre<-"Jose";
	
	Repetir
		Escribir "Ingrese nombre que comiencen con J";
		Leer nombre;
		Si subcadena(nombre,0,0)<>"J" y subcadena(nombre,0,0)<>"j" Entonces
			Escribir "Ingreso un nombre que no parte con J, por favor intente de nuevo";
		FinSi
		contador<-contador+1;
	Hasta Que nombre="Juan"
	
	Escribir "Ganaste";
	Escribir "Realizaste un total de:", contador-1, " intentos antes de ganar(fallidos)";
	
	Esperar Tecla;
FinSubProceso

SubProceso funcion5( )
	Definir N, suma, contador como Entero;
	
	N<--10;
	suma<-0;
	contador<-0;
	
	Escribir "Ingrese los n�meros que desea promediar, cuando desee terminar ingrese un 0";
	Mientras N<>0 Hacer
		Leer N;
		suma<-suma+N;
		contador<-contador+1;
	FinMientras
	
	Escribir "La cantidad de n�meros ingresados es:",contador-1, " y el promedio de ellos es:", suma/(contador-1);
	Esperar Tecla;
FinSubProceso

SubProceso funcion4( )
	Definir num como entero;
	
	num<-0;
	
	Mientras num<1 o num>10 Hacer
		Escribir "Ingrese un n�mero entero entre 1 y 10";
		Leer num;
	FinMientras
	
	Segun num Hacer
		1:
			Escribir "El n�mero ingresado es UNO";
		2:
			Escribir "El n�mero ingresado es DOS";
		3:
			Escribir "El n�mero ingresado es TRES";
		4:
			Escribir "El n�mero ingresado es CUATRO";
		5:
			Escribir "El n�mero ingresado es CINCO";
		6:
			Escribir "El n�mero ingresado es SEIS";
		7:
			Escribir "El n�mero ingresado es SIETE";
		8:
			Escribir "El n�mero ingresado es OCHO";
		9:
			Escribir "El n�mero ingresado es NUEVE";
		10:
			Escribir "El n�mero ingresado es DIEZ";
	FinSegun
	
	Esperar Tecla;
	
	
FinSubProceso

SubProceso  funcion3( )
	Definir nombre, genero como Caracter;
	Definir alternativa como Entero;
	Escribir "Ingrese su nombre";
	Leer nombre;
	
	Repetir
		Escribir "Ingrese su g�nero (hombre/mujer)";
		Leer genero;
	Hasta Que Minusculas(genero)="hombre" o Minusculas(genero)="mujer" 
	
	Repetir
		Escribir "1-Si desea utilizar el ba�o";
		Escribir "2-Si desea utilizar la ducha";
		Leer alternativa;
	Hasta Que alternativa=1 o alternativa=2
	
	Si Minusculas(genero)="mujer" Entonces
		Si alternativa=1 Entonces
			Escribir "Dirijase al ba�o de mujeres y pague un total de 250(ba�o)";
		SiNo
			Escribir "Dirijase al ba�o de mujeres y pague un total de 2500(ducha)";
		FinSi
	SiNo
		Si alternativa=1 Entonces
			Escribir "Dirijase al ba�o de hombres y pague un total de 250(ba�o)";
		SiNo
			Escribir "Dirijase al ba�o de hombres y pague un total de 2500(ducha)";
		FinSi
	FinSi
	Esperar Tecla;
	
FinSubProceso

SubProceso funcion2( )
	Definir nombre, genero como Caracter;
	Escribir "Ingrese su nombre";
	Leer nombre;
	Repetir
	Escribir "Ingrese su g�nero (hombre/mujer)";
	Leer genero;
	Hasta Que Minusculas(genero)="hombre" o Minusculas(genero)="mujer" 
	
	Si Minusculas(genero)="mujer" Entonces
		Escribir "Dirijase al ba�o de m�jeres";
	SiNo
		Escribir "Dirijase al ba�o de hombres";
	FinSi
	Esperar Tecla;
	
FinSubProceso

SubProceso funcion1( )
	Definir n1,n2,n3, promedio como Real;
	
	Escribir "Ingrese 3 n�meros";
	Leer n1,n2,n3;
	
	promedio<-(n1+n2+n3)/3;
	Escribir "El promedio de los n�meros ",n1," , ",n2," y ",n3, " es:",promedio;
	Esperar Tecla;
FinSubProceso

Proceso Menu
	
	Definir opcion como entero;
	
	opcion<-1;
	
	Mientras opcion<>10 Hacer
		Limpiar Pantalla;
		Escribir "1-Funci�n Secuencial";
		Escribir "2-Funci�n Condicional if";
		Escribir "3-Funci�n Condicional if anidada";
		Escribir "4-Funci�n Condicional seg�n";
		Escribir "5-Funci�n Repetitiva Mientras";
		Escribir "6-Funci�n Repetitiva Repetir";
		Escribir "7-Funci�n Repetitiva Para";
		Escribir "8-Funci�n Arreglo Simple";
		Escribir "9-Funci�n Arreglo Bidimensional";
		Escribir "10-Salir";
		Leer opcion;
		
		
		Segun opcion Hacer
			1:
				Limpiar Pantalla;
				funcion1();
			2:
				Limpiar Pantalla;
				funcion2();
			3:
				Limpiar Pantalla;
				funcion3();
			4:
				Limpiar Pantalla;
				funcion4();
			5:	
				Limpiar Pantalla;
				funcion5();
			6:
				Limpiar Pantalla;
				funcion6();
			7:
				Limpiar Pantalla;
				funcion7();
			8:
				Limpiar Pantalla;
				funcion8();
			9:
				Limpiar Pantalla;
				funcion9();
			10:
				Escribir "Adios";
			De Otro Modo:
				Escribir "Ingrese un n�mero entre el 1 y el 10";
		FinSegun
	FinMientras
FinProceso
