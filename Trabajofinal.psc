Algoritmo Trabajo_Final
	Definir s, num, int, n, z, l Como Entero
	Definir newpass, asteriscos, newnewpass Como Cadena
	Limpiar Pantalla
	Escribir ''
	Si HoraActual()<120000 Entonces
		Escribir ' - Buen d�a -'
	SiNo
		Si HoraActual()>200000 Entonces
			Escribir ' - Buenas noches -'
		SiNo
			Escribir ' - Buen tardes -'
		FinSi
	FinSi
	Escribir ''
	Escribir '    ELIJE UNA OPCI�N'
	Escribir '    ����������������'
	Escribir '1 - JUEGO: DESCUBRE EL N�MERO'
	Escribir '2 - CAMBIAR PASSWORD'
	// Escribir "3 - "
	Escribir '0 - SALIR'
	Escribir ''
	Escribir 'Ingrese su opci�n'
	Leer z
	Mientras z<>0 Hacer
		Seg�n z Hacer
			1:
				Limpiar Pantalla
				s <- 1
				Mientras s<>0 Hacer
					Escribir ' __________________________________________________________'
					Escribir '     DESCUBRE EL N�MERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
					Escribir ' ����������������������������������������������������������'
					Escribir ''
					num <- azar(10)
					int <- 1
					Escribir 'Intento N� ', int
					Leer n
					Mientras n>9 O n<0 Hacer
						Limpiar Pantalla
						Escribir ' __________________________________________________________'
						Escribir '     DESCUBRE EL N�MERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
						Escribir ' ����������������������������������������������������������'
						Escribir '       ### ERROR: El n�mero debe ser entre 0 y 9 ###'
						Escribir 'Intento N� ', int
						Leer n
					FinMientras
					Mientras n<>num Y int<>3 Hacer
						Si int<>3 Entonces
							Limpiar Pantalla
							Escribir ' __________________________________________________________'
							Escribir '     DESCUBRE EL N�MERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
							Escribir ' ����������������������������������������������������������'
							Escribir '                   [ NO ES EL N�MERO ]'
							int <- int+1
							Escribir 'Intento N� ', int
							Leer n
							Mientras n>9 O n<0 Hacer
								Limpiar Pantalla
								Escribir ' __________________________________________________________'
								Escribir '     DESCUBRE EL N�MERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
								Escribir ' ����������������������������������������������������������'
								Escribir '       ### ERROR: El n�mero debe ser entre 0 y 9 ###'
								Escribir 'Intento N� ', int
								Leer n
							FinMientras
						FinSi
					FinMientras
					Limpiar Pantalla
					Escribir ' __________________________________________________________'
					Escribir '     DESCUBRE EL N�MERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
					Escribir ' ����������������������������������������������������������'
					Si n=num Entonces
						Si int=1 Entonces
							Escribir '     [ACERTASTE EN EL PRIMER INTENTO!!! EL N�MERO ES ', n, ']'
							Escribir '                     --------------------'
						SiNo
							Si int=2 Entonces
								Escribir '    [ACERTASTE EN EL SEGUNDO INTENTO!!! EL N�MERO ES ', n, ']'
								Escribir '                     --------------------'
							SiNo
								Escribir '     [ACERTASTE EN EL TERCER INTENTO!!! EL N�MERO ES ', n, ']'
								Escribir '                     --------------------'
							FinSi
						FinSi
					SiNo
						Escribir '          [EL N�MERO ERA ', num, '. UNA PENA NO ACERTASTE!]'
						Escribir '                     --------------------'
					FinSi
					Escribir '            QUER�S JUGAR DE NUEVO? [1-SI / 0-NO]'
					Leer s
					Limpiar Pantalla
				FinMientras
			2:
				l <- 1
				Mientras l<>0 Hacer
					Limpiar Pantalla
					Escribir '                         --------------------'
					Escribir '                          CAMBIO DE PASSWORD'
					Escribir '                         --------------------'
					Escribir '            [ La password debe tener m�s de 8 caracteres ]'
					Escribir ''
					Si oldpass<>'' Entonces
						Escribir ' Ingrese la password anterior'
						Leer newpass
						Mientras oldpass<>newpass Hacer
							Escribir ' La password ingresada no es correcta. Reigr�sela.'
							Leer newpass
						FinMientras
					FinSi
					Escribir ' Ingrese nueva password'
					Leer newpass
					Mientras Longitud(newpass)<8 Hacer
						Escribir 'Debe tener 8 o m�s caracteres'
						Leer newpass
					FinMientras
					Para I<-1 Hasta Longitud(newpass) Hacer
						astericos <- astericos+'*'
					FinPara
					Limpiar Pantalla
					Escribir '                         --------------------'
					Escribir '                          CAMBIO DE PASSWORD'
					Escribir '                         --------------------'
					Escribir '            [ La password debe tener m�s de 8 caracteres ]'
					Escribir ''
					Escribir ' Ingrese nueva password'
					Escribir '> ', astericos
					Escribir ' Reingresar nueva password'
					Leer newnewpass
					Mientras newnewpass<>newpass Hacer
						Escribir 'Las passwords ingresadas son diferentes'
						Leer newnewpass
					FinMientras
					Limpiar Pantalla
					Escribir '                         --------------------'
					Escribir '                          CAMBIO DE PASSWORD'
					Escribir '                         --------------------'
					Escribir '            [ La password debe tener m�s de 8 caracteres ]'
					Escribir ''
					Escribir ' Ingrese nueva password'
					Escribir '> ', astericos
					Escribir ' Reingresar nueva password'
					Escribir '> ', astericos
					oldpass <- newpass
					astericos <- ''
					Escribir '                       Nueva password guardada!'
					Escribir ''
					Escribir ' [ 1 Para volver a cambiar la Password ? 0 - Para salir ]'
					Leer l
				FinMientras
		FinSeg�n
		Limpiar Pantalla
		Escribir ''
		Si HoraActual()<120000 Entonces
			Escribir ' - Buen d�a -'
		SiNo
			Si HoraActual()>200000 Entonces
				Escribir ' - Buenas noches -'
			SiNo
				Escribir ' - Buen tardes -'
			FinSi
		FinSi
		Escribir ''
		Escribir '    ELIJE UNA OPCI�N'
		Escribir '    ����������������'
		Escribir '1 - JUEGO: DESCUBRE EL N�MERO'
		Escribir '2 - CAMBIAR PASSWORD'
		// Escribir "3 - "
		Escribir '0 - SALIR'
		Escribir ''
		Escribir 'Ingrese su opci�n'
		Leer z
	FinMientras
	Limpiar Pantalla
	Escribir ''
	Escribir '                - MUCHAS GRACIAS. QUE TENGA BUEN D�A -'
	Escribir ''
FinAlgoritmo
