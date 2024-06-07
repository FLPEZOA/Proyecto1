Algoritmo SistemaCostos
	Definir precio Como real
	Definir descuentocupon Como real
	definir preciocupon Como real
	definir respuesta como entero
	Definir impuesto Como Real
	Definir incluyeIVA como logico
	Definir precioimpuesto Como Real
	Definir cantidad como entero
	Definir descuentocantidad Como real
	Definir peso como real
	Definir costopeso como cadena
	Definir totalPeso Como Real
	Definir destinos como texto
	Definir totalenvio Como Real
	Definir costofinal Como real
	
	
	
	Escribir "Ingrese el precio de producto"
	Leer precio
	
	Escribir "Ingrese el cupon de descuento (5, 10)"
	Leer descuentocupon 
	
	descuentocupon <- descuentocupon /100
	preciocupon <- precio - (precio * descuentocupon)
	
	Escribir "El costo total es de: ", "$" preciocupon
	
	impuesto <- 1.12
	
	Escribir "¿Esta compra incluye IVA? Responda 1 por SI y 2 por NO"
    Leer respuesta
    incluyeIVA <- respuesta = 1
    
    Si incluyeIVA Entonces
        precioimpuesto <- preciocupon * impuesto
        Escribir "El costo total con IVA es: $", precioimpuesto
    Sino
        Escribir "Usted debe pagar el impuesto al IVA"
    FinSi
	
	Escribir "¿Cuántos productos desea llevar?"
	Leer cantidad
	
	si cantidad = 1 Entonces
		descuentocantidad <- descuentocantidad
	FinSi
	
	si cantidad <= 100 entonces 
		descuentocantidad <- precioimpuesto * 0.95
	SiNo
		descuentocantidad <- precioimpuesto * 0.90
	FinSi
	
	Escribir "Has recibido un descuento por cantidad de producto! El costo total es de: ", "$" descuentocantidad
	
	Escribir "Ingrese el peso del paquete que enviará"
	Leer peso
	
	Dimension costopeso[4]
	costopeso[0] <- "1) 1 - 3 kg el valor es de $6"
	costopeso[1] <- "2) 4 - 6 kg el valor es de $12"
	costopeso[2] <- "3) 7 - 10 kg el valor es de $20"
	costopeso[3] <- "4) 11 - 15 kg el valor es de $30"
	
	Escribir "Ingrese el destino del paquete que enviará"
	leer destinos
	
	Si peso >= 1 y peso <= 3 Entonces
		totalenvio <- (2 * 3) + 10
	finsi
	Si peso >= 4 y peso <= 6 Entonces
		totalenvio <- (2 * 6) + 10
	finsi
	
	Si peso >= 7 y peso <= 10 Entonces
		totalenvio <- (2 * 10) + 10
	FinSi
	
	Si peso >= 11 y peso <= 15 Entonces
		totalenvio <- (2 * 15) + 10
	Sino
		Escribir "Ingrese una opción de peso válida"
	FinSi
	
	costofinal <- (descuentocantidad * cantidad) +  totalenvio
	
	Escribir "El costo de envío es de:","$" totalenvio
	
	Escribir "El costo final del producto es de: ", "$" costofinal
	
	Escribir "Detalle"
	Escribir "El precio de tu producto es :", precio
	Escribir "Descuento por cupón es: ", "$" (precio * descuentocupon)
	Escribir "Impuestos: ", "$" (precioimpuesto - preciocupon) 
	Escribir "descuento por cantidad: ", "$" precioimpuesto - (precioimpuesto * 0.95)
	Escribir "costo de envío: ", "$" totalenvio

	
FinAlgoritmo
