Algoritmo Trabajo_Final
	Definir s, num, int, n, z, l Como Entero
	Definir newpass, asteriscos, newnewpass Como Cadena
	Limpiar Pantalla
	Escribir ''
	Si HoraActual()<120000 Entonces
		Escribir ' - Buen día -'
	SiNo
		Si HoraActual()>200000 Entonces
			Escribir ' - Buenas noches -'
		SiNo
			Escribir ' - Buen tardes -'
		FinSi
	FinSi
	Escribir ''
	Escribir '    ELIJE UNA OPCIÓN'
	Escribir '    ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
	Escribir '1 - JUEGO: DESCUBRE EL NÚMERO'
	Escribir '2 - CAMBIAR PASSWORD'
	// Escribir "3 - "
	Escribir '0 - SALIR'
	Escribir ''
	Escribir 'Ingrese su opción'
	Leer z
	Mientras z<>0 Hacer
		Según z Hacer
			1:
				Limpiar Pantalla
				s <- 1
				Mientras s<>0 Hacer
					Escribir ' __________________________________________________________'
					Escribir '     DESCUBRE EL NÚMERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
					Escribir ' ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
					Escribir ''
					num <- azar(10)
					int <- 1
					Escribir 'Intento Nº ', int
					Leer n
					Mientras n>9 O n<0 Hacer
						Limpiar Pantalla
						Escribir ' __________________________________________________________'
						Escribir '     DESCUBRE EL NÚMERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
						Escribir ' ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
						Escribir '       ### ERROR: El número debe ser entre 0 y 9 ###'
						Escribir 'Intento Nº ', int
						Leer n
					FinMientras
					Mientras n<>num Y int<>3 Hacer
						Si int<>3 Entonces
							Limpiar Pantalla
							Escribir ' __________________________________________________________'
							Escribir '     DESCUBRE EL NÚMERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
							Escribir ' ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
							Escribir '                   [ NO ES EL NÚMERO ]'
							int <- int+1
							Escribir 'Intento Nº ', int
							Leer n
							Mientras n>9 O n<0 Hacer
								Limpiar Pantalla
								Escribir ' __________________________________________________________'
								Escribir '     DESCUBRE EL NÚMERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
								Escribir ' ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
								Escribir '       ### ERROR: El número debe ser entre 0 y 9 ###'
								Escribir 'Intento Nº ', int
								Leer n
							FinMientras
						FinSi
					FinMientras
					Limpiar Pantalla
					Escribir ' __________________________________________________________'
					Escribir '     DESCUBRE EL NÚMERO DEL 0 AL 9 OCULTO EN 3 INTENTOS'
					Escribir ' ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
					Si n=num Entonces
						Si int=1 Entonces
							Escribir '     [ACERTASTE EN EL PRIMER INTENTO!!! EL NÚMERO ES ', n, ']'
							Escribir '                     --------------------'
						SiNo
							Si int=2 Entonces
								Escribir '    [ACERTASTE EN EL SEGUNDO INTENTO!!! EL NÚMERO ES ', n, ']'
								Escribir '                     --------------------'
							SiNo
								Escribir '     [ACERTASTE EN EL TERCER INTENTO!!! EL NÚMERO ES ', n, ']'
								Escribir '                     --------------------'
							FinSi
						FinSi
					SiNo
						Escribir '          [EL NÚMERO ERA ', num, '. UNA PENA NO ACERTASTE!]'
						Escribir '                     --------------------'
					FinSi
					Escribir '            QUERÉS JUGAR DE NUEVO? [1-SI / 0-NO]'
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
					Escribir '            [ La password debe tener más de 8 caracteres ]'
					Escribir ''
					Si oldpass<>'' Entonces
						Escribir ' Ingrese la password anterior'
						Leer newpass
						Mientras oldpass<>newpass Hacer
							Escribir ' La password ingresada no es correcta. Reigrésela.'
							Leer newpass
						FinMientras
					FinSi
					Escribir ' Ingrese nueva password'
					Leer newpass
					Mientras Longitud(newpass)<8 Hacer
						Escribir 'Debe tener 8 o más caracteres'
						Leer newpass
					FinMientras
					Para I<-1 Hasta Longitud(newpass) Hacer
						astericos <- astericos+'*'
					FinPara
					Limpiar Pantalla
					Escribir '                         --------------------'
					Escribir '                          CAMBIO DE PASSWORD'
					Escribir '                         --------------------'
					Escribir '            [ La password debe tener más de 8 caracteres ]'
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
					Escribir '            [ La password debe tener más de 8 caracteres ]'
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
		FinSegún
		Limpiar Pantalla
		Escribir ''
		Si HoraActual()<120000 Entonces
			Escribir ' - Buen día -'
		SiNo
			Si HoraActual()>200000 Entonces
				Escribir ' - Buenas noches -'
			SiNo
				Escribir ' - Buen tardes -'
			FinSi
		FinSi
		Escribir ''
		Escribir '    ELIJE UNA OPCIÓN'
		Escribir '    ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
		Escribir '1 - JUEGO: DESCUBRE EL NÚMERO'
		Escribir '2 - CAMBIAR PASSWORD'
		// Escribir "3 - "
		Escribir '0 - SALIR'
		Escribir ''
		Escribir 'Ingrese su opción'
		Leer z
	FinMientras
	Limpiar Pantalla
	Escribir ''
	Escribir '                - MUCHAS GRACIAS. QUE TENGA BUEN DÍA -'
	Escribir ''
FinAlgoritmo
