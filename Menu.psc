Proceso Menu
	Definir usuario, usuario_ingresado, contrasena, contrasena_ingresado, nombre, genero Como Caracter;
	Definir limite_intentos,inicio_sesion, opciones ,suma_total,peso_ninos,promedio_peso Como Real;
	Definir nninas, nninos Como Entero;
	Definir sumaninos,edad, contador, sumaninas Como Entero;
	Definir menor140, entre140_170, mayor170 Como Entero;
	Definir talla, peso, imc, opcion_salida Como Real;
	Escribir "Cree un nombre de usuario:";
	Leer usuario;
	Escribir "Cree una contraseña:";
	Leer contrasena;
	limite_intentos = 0;
	inicio_sesion = 0;
	contador = 0;
	peso_ninos = 0;
	sumaninos = 0;
	nninas = 0;
	nninos = 0;
	
	Mientras limite_intentos<3 y inicio_sesion=0 Hacer
		Escribir "Ingrese su nombre de usuario:";
		Leer usuario_ingresado;
		Escribir "Ingrese su contraseña:";
		Leer contrasena_ingresado;
		Si usuario = usuario_ingresado y contrasena = contrasena_ingresado Entonces
			Escribir "Inicio de sesión exitoso";
			Escribir "";
			inicio_sesion = inicio_sesion+1;
		SiNo 
			Escribir "Datos incorrectos, intentelo de nuevo";
			limite_intentos= limite_intentos+1;
		FinSi
	FinMientras
	Si limite_intentos = 3 Entonces
		Escribir "Numero de intentos màximo alcanzado";
	SiNo
		Repetir
			Escribir "----------------- Menu ----------------";
			Escribir "Opcion 1 (Ingresar datos del paciente)";
			Escribir "Opcion 2 (Calcular datos)";
			Escribir "Opcion 3 (Salir)";
			Escribir "";
			Escribir "Seleccione una opcion:";
			Leer opciones;
			menor140=0;
			entre140_170=0;
			mayor170=0;
			
			Segun opciones Hacer
				1: 
					imc=0;
					Repetir
						Escribir "Seleccione el genero (F = Femenino, M = Masculino)";
						Leer genero;
						
						Si genero= "F" Entonces
							Escribir "Ingrese el nombre y el apellido de la niña :";
							Leer nombre;
							Repetir
								Escribir "Ingrese la edad de la niña :";
								Leer edad;	
								Si edad<=4 o edad>=12 Entonces
									Escribir "Dato inválido, vuelva a ingresar la edad";
								FinSi
							Hasta Que edad>=5 y edad<=12;
							Repetir
								Escribir "Ingrese el peso (en Kg) de la niña :";
								Leer peso;	
								Si peso<12.2 o peso>146 Entonces
									Escribir "Dato inválido, vuelva a ingresar el peso";
								FinSi
							Hasta Que peso>12.2 y peso<146;
							Repetir
								Escribir "Ingrese la talla (en cm) de la niña :";
								Leer talla;
								Si talla<97.6 o talla>145 Entonces
									Escribir "Dato inválido, vuelva a ingresar la talla";
								FinSi
							Hasta Que  talla>97.6 y talla<180;
							
							nninas = nninas + 1;
							sumaninas = nninas;
							Si peso >= 35 Y peso <= 50 Y edad <10 Entonces
								Escribir "Altura de niña con peso entre 35 y 50 kg y menor a 10 años: ", talla, " cm";
								contador = contador + 1;
							FinSi
							Si edad=5 o edad=6 o edad=7 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<13 Entonces
									Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=13 y imc<=17 Entonces
									Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=17 y imc<18.5 Entonces
									Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 18.5 Entonces
									Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
							FinSi
							Si edad=8 o edad=9 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<13 Entonces
									Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=13 y imc<=17.5 Entonces
									Escribir "Su nivel de IMC es saludable ", imc;
								FinSi
								Si imc>=17.5 y imc<20 Entonces
									Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 20 Entonces
									Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
								
							FinSi
							Si edad= 10 o edad=11 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<13.5 Entonces
									Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=13.5 y imc<=19 Entonces
									Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=19 y imc<22 Entonces
									Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 22 Entonces
									Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
							FinSi
							Si edad=14 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<14 Entonces
									Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=14 y imc<=20.5 Entonces
									Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=20.5 y imc<24 Entonces
									Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 24 Entonces
									Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
							FinSi
						FinSi
						
						Si genero="M" Entonces
							Escribir "Ingrese el nombre y el apellido del niño :";
							Leer nombre;
							Repetir
								Escribir "Ingrese la edad del niño :";
								Leer edad;	
								Si edad<=4 o edad>=12 Entonces
									Escribir "Dato inválido, vuelva a ingresar la edad";
								FinSi
							Hasta Que edad>=5 y edad<=12;
							Repetir
								Escribir "Ingrese el peso (en Kg) del niño :";
								Leer peso;	
								Si peso<12.2 o peso>146 Entonces
									Escribir "Dato inválido, vuelva a ingresar el peso";
								FinSi
							Hasta Que peso>12.2 y peso<146;	
							Repetir
								Escribir "Ingrese la talla (en cm) del niño:";
								Leer talla;
								Si talla<97.6 o talla>180 Entonces
									Escribir "Dato inválido, vuelva a ingresar la talla";
								FinSi
							Hasta Que  talla>97.6 y talla<145;
								
							 nninos= nninos + 1;
							 sumaninos = nninos;
							 peso_ninos = peso_ninos + peso;
							 promedio_peso = peso_ninos / nninos;
							 Escribir "El peso promedio de los niños es ", promedio_peso, " kg";
							 Si edad=5 o edad=6 o edad=7 Entonces
								 imc = peso / ((talla / 100) * (talla / 100));
								Si imc<13 Entonces
									 Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=13 y imc<=16.75 Entonces
									 Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=17 y imc<18.25 Entonces
									 Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 18.5 Entonces
									 Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
							FinSi
							Si edad=8 o edad=9 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<13.5 Entonces
									 Escribir "Su nivel de IMC es bajo ", imc;
								FinSi
								Si imc>=13.5 y imc<=17.5 Entonces 
									 Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=17.5 y imc<19.5 Entonces
									 Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 19.5 Entonces
									 Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
								 
							FinSi
							Si edad= 10 o edad=11 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<14 Entonces
									 Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=14 y imc<=18.5 Entonces
									 Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=18.5 y imc<21 Entonces
									 Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 21 Entonces
									 Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
							FinSi
							Si edad=12 Entonces
								imc = peso / ((talla / 100) * (talla / 100));
								Si imc<14.5 Entonces
									 Escribir "Su nivel de IMC es bajo ",imc;
								FinSi
								Si imc>=14.5 y imc<=19.5 Entonces
									 Escribir "Su nivel de IMC es saludable ",imc;
								FinSi
								Si imc>=19.5 y imc<22.5 Entonces
									 Escribir "Su nivel de IMC está en Riesgo de sobrepeso ",imc;
								FinSi
								Si imc>= 22.5 Entonces
									 Escribir "Su nivel de IMC indica sobrepeso ",imc;
								FinSi
							FinSi
						FinSi
						suma_total=sumaninas+sumaninos;
						Escribir "Desea continuar? 1= Si, 2=No";
						leer opcion_salida;
						
					Hasta Que opcion_salida = 2;	
					
					Escribir "Se calcularon " , sumaninas, " niñas";
					Escribir "Se calcularon " , sumaninos, " niños";
					Escribir "En total se calcularon ",suma_total, " niñ@s";
					Escribir "";
					
				2:
					menor140=0;
					entre140_170=0;
					mayor170=0;
					
					Si talla < 140 Entonces
						menor140 = menor140 + 1;
					FinSi
					Escribir "Número de niños menores a 140cm:", menor140;
					
					Si talla >= 140 y talla <= 170 Entonces
						entre140_170 = entre40_170 + 1;
					FinSi
                    Escribir "Número de niños entre 140cm y 170cm:", entre140_170;
					
                    Si talla > 170 Entonces
						mayor170 = mayor170 + 1;
					FinSi
					Escribir "Número de niños de más de 170cm:", mayor170;
				3:  
					Escribir "Sesión finalizada, gracias por usar";
				De Otro Modo:
					Escribir "Accion invalida, seleccione otra opcion";
			FinSegun
		Hasta Que opciones = 3;
	FinSi
FinAlgoritmo