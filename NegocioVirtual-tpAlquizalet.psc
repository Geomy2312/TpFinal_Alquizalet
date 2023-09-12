Algoritmo JugueteriaVirtual
	Definir producto Como Cadena
	Definir precio, total Como Entero
	Definir opcionEnvio Como Cadena
	Definir agregarProducto Como Cadena
	Definir realizarOtraCompra Como Cadena
	Definir realizarCompraProductos Como Cadena
	realizarOtraCompra <- 'Si'
	Escribir 'Bienvenido a la Jugueteria Virtual'
	Escribir 'Este negocio es una plataforma E-commerce en la cual puede visualizar juegos y juguetes de diferentes edades y g�neros.'
	Escribir 'Desea que le mostremos los juegos m�s solicitados: (Si/N0)? '
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	Si respuesta='SI' Entonces
		Escribir 'Los productos m�s solicitados son:'
		Escribir '1.Monopoly Electronico - Juego familiar '
		Escribir '2. Teg Conquista - Juego de estrategia '
		Escribir '3. Simon Memory - Juego de memoria '
		Escribir '�Le gustar�a saber el precio? (Si/No): '
		Leer precioRespuesta
		precioRespuesta <- Mayusculas(precioRespuesta)
		Si precioRespuesta='SI' Entonces
			Escribir 'Precio del Producto 1: $15800'
			Escribir 'Precio del Producto 2: $18000'
			Escribir 'Precio del Producto 3: $14800'
		FinSi
		Escribir '�Desea realizar la compra de alguno de los productos ofrecidos? (Si/No): '
		Leer realizarCompraProductos
		realizarCompraProductos <- Mayusculas(realizarCompraProductos)
		Si realizarCompraProductos='SI' Entonces
			Escribir 'Por favor, seleccione un producto:'
			Escribir '1.Monopoly Electronico - Juego familiar '
			Escribir '2. Teg Conquista - Juego de estrategia '
			Escribir '3. Simon Memory - Juego de memoria '
			Leer producto
			Seg�n producto Hacer
				'1':
					precio <- 15800
				'2':
					precio <- 18000
				'3':
					precio <- 14800
				De Otro Modo:
					Escribir 'Producto no v�lido.'
			FinSeg�n
		FinSi
		Escribir 'Seleccione una opci�n de env�o:'
		Escribir '1. Env�o a domicilio ($850 adicionales)'
		Escribir '2. Retiro en el domicilio del vendedor (sin costo adicional)'
		Leer opcionEnvio
		total <- precio
		Seg�n opcionEnvio Hacer
			'1':
				total <- total+850
			'2':
				total <- total
			De Otro Modo:
				Escribir 'Opci�n de env�o no v�lida.'
		FinSeg�n
		Escribir 'El total a pagar es: $', total
		Si opcionEnvio='1' Entonces
			Si realizarOtraCompra='SI' Entonces
				Escribir '�Desea realizar otra compra? (Si/No): '
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
			Escribir 'El total a pagar por su compra con env�o es: $', total
			Escribir 'Perfecto, su compra se ha generado con �xito.'
			Escribir 'Su env�o ser� despachado en 24 horas y podr�a llegarle en un plazo de 48 a 72 horas h�biles.'
			realizarOtraCompra <- 'No'
		FinSi
		Escribir 'Agradecemos la confianza en nuestro servicio. �Que tenga un buen d�a!'
	FinSi
FinAlgoritmo
