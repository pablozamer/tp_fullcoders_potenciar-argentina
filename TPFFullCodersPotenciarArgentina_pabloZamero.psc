Algoritmo AplicarDescuentoVivero
	//escribir la contraseña 
	Definir contraseña como cadena
	Definir errores como entero
		Escribir "Ingrese la contraseña: "
		Leer contraseña
		Mientras  contraseña <> "1111" Hacer
			errores= errores +1
			Escribir "CLAVE ERRÓNEA!!"
			Escribir "Intente nuevamente: "
			Leer contraseña
			Escribir  "el total de intentos fallidos fue: ", errores
	FinMientras
	//escribir la fecha de compra
	Definir fecha Como Caracter
	Escribir "Fecha: "
	Leer fecha
	//escribir la hora de compra
	Definir hora Como Caracter
	Escribir "Hora: "
	Leer hora
	//escribir nombre del artículo
	Definir articulo Como caracter
	Escribir "Nombre de artículo: "
	Leer articulo
	//escribir el numero de artículos que compra
	Definir cantidad Como Entero
	Escribir "Ingresar la cantidad de artículos: "
	Leer n
	//escribir el precio del artículo
	Escribir "Ingrese el precio del artículo: "
	Leer precio
	precio_n = precio * n
	//escribir el precio por promoción y con IVA
		precio_promocion <- precio_n - (precio_n*0.10)
		precio_con_iva <- precio_promocion *1.21
		Escribir "Descuento por promoción: $", precio_promocion
		Escribir "Costo con IVA: $", precio_con_iva
		//escribir la forma de pago y según ésta descontar el precio inicial del artículo
		Escribir "Forma de pago: "
		Escribir "Ingrese 1 si en efectivo"
		Escribir "Ingrese 2 si con tarjeta"
		Escribir "Ingrese 3 pago online"
		Leer forma_pago
		Segun forma_pago Hacer
			1:
				descuento<-  precio_con_iva* 0.15
				total<-  precio_con_iva- descuento
			2:
				descuento<- precio_con_iva* 0.10
				total<-  precio_con_iva- descuento
			3:
				descuento<-  precio_con_iva* 0.05
				total<-  precio_con_iva- descuento
		//aclarar sino se elige entre las tres opciones dara mensaje de error
			De Otro Modo:
				Escribir "LA OPCIÓN ES INCORRECTA!!"
		FinSegun
		//resumen de tras¿nsacción para ese artículo
		Escribir "<<RESUMEN FACTURA>> "
		Escribir "Fecha: ", (fecha)
		Escribir "Hora: ", (hora)
		Escribir "Nombre de artículo: ", (articulo)
		Escribir "Cantidad de ARTÍCULOS: ", ConvertirATexto(n)
		Escribir "El descuento final: $", ConvertirATexto(descuento), "  del %" ConvertirATexto(descuento/precio_con_iva*100)
		Escribir "PAGO TOTAL: $", ConvertirATexto(total)
		//declarar ticket con beneficios de descuento si cumple condición		
		Si total >= 5000  Entonces
			Escribir ">>>Presentando éste Ticket tendrá un BONUS DESCUENTO DEL 20% PROXIMA COMPRA<<<"
		SiNo
			Escribir "Sin beneficios"
		Fin Si
FinAlgoritmo
