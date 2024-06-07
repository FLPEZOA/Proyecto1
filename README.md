# Proyecto1
Planteamiento: Crear un algoritmo en pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado. 

Requerimientos:
Leer el precio original del producto.
Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
Calcular el costo de envío basado en el destino y el peso del paquete.
Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

Solución explicada paso a paso:
1. Se declaran las variables del sistema
Precio, descuentocupon, preciocupon, precioimpuesto, descuentocantidad, peso, totalPeso, totalenvio, costofinal son reales que almacenarán los totales y que permitirán controlar los bucles y realizar cálculos.
Cantidad, respuesta son Enteros que también permitirán realizar cálculos.
Destinos es una variable de texto que almacenará el destino escogido por el usuario.
costopeso es un arreglo de cadena que almacenará la información del valor por tramo ingresado por usuario.
Impuesto se define como booleana y almacenará la confirmación del usuario

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

2. Se solicita al usuario ingresar el precio unitario del producto:
   Se muestra un mensaje pidiendo el precio unitario.
   Se lee este precio y se guarda en la variable PRECIO.

   Escribir "Ingrese el precio de producto"
	Leer precio

3. Se solicita al usuario ingresar el porcentaje de descuento de su cupón.
   Se muestra un mensaje pidiendo el porcentaje de descuento
   Se lee y se guarda en la variable DESCUENTOCUPON

   Escribir "Ingrese el cupon de descuento (5, 10)"
	Leer descuentocupon 
   
5. Se crea una constante que calcula el precio con el descuento aplicado y se guarda en la variable PRECIOCUPON
 descuentocupon <- descuentocupon /100
   
	preciocupon <- precio - (precio * descuentocupon)
	
	escribir "El costo total es de: ", "$" preciocupon

6. Se plantea la constante que equivale al IVA que se aplicará sobre el precio.

    impuesto <- 1.12

7. Luego, se consulta al usuario si su compra incluirá o no este impuesto a través de opciones (1 y 2) y se define la constante IMPUESTOIVA que corresponde a la respuesta 1 consultada anteriormente

   Escribir "¿Esta compra incluye IVA? Responda 1 por SI y 2 por NO"
    Leer respuesta
    incluyeIVA <- respuesta = 1

8. Si la respuesta es SI (1) se multiplica el último valor por la constante y se almacena en lla variable PRECIOIMPUESTO. Si no, se escribe un mensaje de advertencia.  

    Si incluyeIVA Entonces
        precioimpuesto <- preciocupon * impuesto
        Escribir "El costo total con IVA es: $", precioimpuesto
    Sino
        Escribir "Usted debe pagar el impuesto al IVA"
    FinSi

9. Se consulta al usuario la cantidad de productos que lleva, pues hay descuento y se lee este número que luego se almacena en CANTIDAD.
   Según la cantidad ingresada se lee el precio calculado que se almacena en DESCUENTO CANTIDAD.

  Escribir "¿Cuántos productos desea llevar?"
	Leer cantidad
 
10. Según la cantidad de productos se calcula el descuento.

  	si cantidad = 1 Entonces
		descuentocantidad <- descuentocantidad
	FinSi
	
	si cantidad <= 100 entonces 
		descuentocantidad <- precioimpuesto * 0.95
	SiNo
		descuentocantidad <- precioimpuesto * 0.90
	FinSi

  Escribir "Has recibido un descuento por cantidad de producto! El costo total es de: ", "$" descuentocantidad
  
11. Se solicita ingresar el peso del paquete para calcular el costo de envío. Se lee el peso y se guarda en la variable PESO y se utiliza el arreglo COSTOPESO para mostrar los rangos según la opción ingresada.

  Escribir "Ingrese el peso del paquete que enviará"
	Leer peso
	
	Dimension costopeso[4]
	costopeso[0] <- "1) 1 - 3 kg el valor es de $6"
	costopeso[1] <- "2) 4 - 6 kg el valor es de $12"
	costopeso[2] <- "3) 7 - 10 kg el valor es de $20"
	costopeso[3] <- "4) 11 - 15 kg el valor es de $30"

12. Se solicita ingresar el destino, que será almacenado en la variable DESTINOS.

    Escribir "Ingrese el destino del paquete que enviará"
	  leer destinos

13. Según el peso indicado por usuario varía la constante TOTALENVIO que calculará el precio y que añade el costo fijo según el destino.

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
14. Se define y escribe la constante COSTO FINAL que calculará el costo total más el costo de envío.

    costofinal <- (descuentocantidad * cantidad) +  totalenvio

15. Se pide mosrtar el total calculado luego de todas las variables, almacenado en COSTOFINAL

  Escribir "El costo final del producto es de: ", "$" costofinal
  
16.  Además se muestra el detalle de todos los valores agregados y descontados al precio inicial.

     Escribir "Detalle"
	Escribir "El precio de tu producto es :", precio
	Escribir "Descuento por cupón es: ", "$" (precio * descuentocupon)
	Escribir "Impuestos: ", "$" (precioimpuesto - preciocupon) 
	Escribir "descuento por cantidad: ", "$" precioimpuesto - (precioimpuesto * 0.95)
	Escribir "costo de envío: ", "$" totalenvio

la solución en conjunto sería

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
	costopeso[0] <- "1) 1 - 3 kg el valor es de $2"
	costopeso[1] <- "2) 4 - 6 kg el valor es de $5"
	costopeso[2] <- "3) 7 - 10 kg el valor es de $7"
	costopeso[3] <- "4) 11 - 15 kg el valor es de $12"
	
	Escribir "Ingrese el destino del paquete que enviará"
	leer destinos
	
	Si peso >= 1 y peso <= 3 Entonces
		totalenvio <- (2 * peso) + 10
	finsi
	Si peso >= 4 y peso <= 6 Entonces
		totalenvio <- (5 * peso) + 10
	finsi
	
	Si peso >= 7 y peso <= 10 Entonces
		totalenvio <- (7 * peso) + 10
	FinSi
	
	Si peso >= 11 y peso <= 15 Entonces
		totalenvio <- (12 * peso) + 10
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

   
