//14. Hacer un algoritmo en Pseint que lea un entero positivo del 1 al diez y determine si es un n�mero primo.
Proceso Ejercicio14
	Definir numero, i, contador Como Entero
    
    Escribir "Ingrese un n�mero entre 1 y 10:"
    Leer numero
    
    Si numero < 1 O numero > 10 Entonces
        Escribir "El n�mero debe estar entre 1 y 10."
    Sino
        contador = 0
        
        Para i <- 1 Hasta numero Hacer
            Si numero MOD i = 0 Entonces
                contador <- contador + 1
            FinSi
        FinPara
        
        Si contador = 2 Entonces
            Escribir "El n�mero ", numero, " es primo."
        Sino
            Escribir "El n�mero ", numero, " no es primo."
        FinSi
    FinSi
FinProceso