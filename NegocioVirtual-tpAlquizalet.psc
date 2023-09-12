Algoritmo JugueteriaVirtual
	Definir producto Como Cadena
	Definir precio, total Como Entero
	Definir opcionEnvio Como Cadena
	Definir agregarProducto Como Cadena
	Definir realizarOtraCompra Como Cadena
	Definir realizarCompraProductos Como Cadena
	realizarOtraCompra <- 'Si'
	Escribir 'Bienvenido a la Jugueteria Virtual'
	Escribir 'Este negocio es una plataforma E-commerce en la cual puede visualizar juegos y juguetes de diferentes edades y géneros.'
	Escribir 'Desea que le mostremos los juegos más solicitados: (Si/N0)? '
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	Si respuesta='SI' Entonces
		Escribir 'Los productos más solicitados son:'
		Escribir '1.Monopoly Electronico - Juego familiar '
		Escribir '2. Teg Conquista - Juego de estrategia '
		Escribir '3. Simon Memory - Juego de memoria '
		Escribir '¿Le gustaría saber el precio? (Si/No): '
		Leer precioRespuesta
		precioRespuesta <- Mayusculas(precioRespuesta)
		Si precioRespuesta='SI' Entonces
			Escribir 'Precio del Producto 1: $15800'
			Escribir 'Precio del Producto 2: $18000'
			Escribir 'Precio del Producto 3: $14800'
		FinSi
		Escribir '¿Desea realizar la compra de alguno de los productos ofrecidos? (Si/No): '
		Leer realizarCompraProductos
		realizarCompraProductos <- Mayusculas(realizarCompraProductos)
		Si realizarCompraProductos='SI' Entonces
			Escribir 'Por favor, seleccione un producto:'
			Escribir '1.Monopoly Electronico - Juego familiar '
			Escribir '2. Teg Conquista - Juego de estrategia '
			Escribir '3. Simon Memory - Juego de memoria '
			Leer producto
			Según producto Hacer
				'1':
					precio <- 15800
				'2':
					precio <- 18000
				'3':
					precio <- 14800
				De Otro Modo:
					Escribir 'Producto no válido.'
			FinSegún
		FinSi
		Escribir 'Seleccione una opción de envío:'
		Escribir '1. Envío a domicilio ($850 adicionales)'
		Escribir '2. Retiro en el domicilio del vendedor (sin costo adicional)'
		Leer opcionEnvio
		total <- precio
		Según opcionEnvio Hacer
			'1':
				total <- total+850
			'2':
				total <- total
			De Otro Modo:
				Escribir 'Opción de envío no válida.'
		FinSegún
		Escribir 'El total a pagar es: $', total
		Si opcionEnvio='1' Entonces
			Si realizarOtraCompra='SI' Entonces
				Escribir '¿Desea realizar otra compra? (Si/No): '
				Leer realizarOtraCompra
				realizarOtraCompra <- Mayusculas(realizarOtraCompra)
				Mientras realizarOtraCompra='Si' Hacer
					Escribir 'Por favor, seleccione un producto:'
					Escribir '1. Monopoly Electronico - Juego familiar'
					Escribir '2. Teg Conquista - Juego de estrategia'
					Escribir '3. Simon Memory - Juego de memoria'
					Leer producto
				FinMientras
			FinSi
			Escribir 'El total a pagar por su compra con envío es: $', total
			Escribir 'Perfecto, su compra se ha generado con éxito.'
			Escribir 'Su envío será despachado en 24 horas y podría llegarle en un plazo de 48 a 72 horas hábiles.'
			realizarOtraCompra <- 'No'
		FinSi
		Escribir 'Agradecemos la confianza en nuestro servicio. ¡Que tenga un buen día!'
	FinSi
FinAlgoritmo
