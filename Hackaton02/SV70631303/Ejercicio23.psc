//23. Hacer un algoritmo en Pseint para calcular la suma de los n�meros impares menores o iguales a n.

Proceso Ejercicio23
	Definir n, suma, i Como Entero
	Escribir "Ingrese un n?mero:"
    Leer n
    
    suma = 0
    Para i <- 1 Hasta n Con Paso 2 Hacer
        suma = suma + i
    Fin Para
    
    Escribir "La suma de los n?meros impares hasta ", n, " es: ", suma

FinProceso