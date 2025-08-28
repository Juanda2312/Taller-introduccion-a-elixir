Taller de Programación III – Elixir

Este repositorio contiene la solución a los 6 problemas propuestos en el Taller de Introducción a Elixir de la materia Programación III de la Universidad del Quindío.
Cada ejercicio se encuentra implementado en su propio archivo con ejemplos de ejecución.

📋 Problemas del Taller
1. Cálculo de Consumo de Combustible

Un conductor necesita calcular el consumo de combustible de su vehículo. El programa debe:

Pedir el nombre del conductor (texto).

Ingresar la distancia recorrida en kilómetros (real).

Ingresar la cantidad de combustible consumido en litros (real).

Calcular el rendimiento del vehículo en km/L.

Mostrar los resultados con 2 decimales de precisión.

Fórmula:

Rendimiento = distancia / litros

2. Control de Inventario de una Librería

Una librería quiere un sistema de control de inventario que permita registrar los libros disponibles. El programa debe:

Pedir el título del libro (texto).

Solicitar la cantidad de unidades disponibles (entero).

Ingresar el precio unitario (real).

Calcular el valor total del inventario de ese libro.

Mostrar los resultados en un formato legible.

Ejemplo:

Ingrese el título del libro: Introducción a Elixir
Ingrese la cantidad de unidades disponibles: 10
Ingrese el precio unitario: 120000
El libro "Introducción a Elixir" tiene 10 unidades, con un valor total de $1,200,000.

3. Conversión de Unidades de Temperatura

Se requiere un programa que convierta temperaturas entre Celsius, Fahrenheit y Kelvin.

Pedir el nombre del usuario (texto).

Solicitar la temperatura en Celsius (real).

Convertir la temperatura a Fahrenheit y Kelvin.

Mostrar los resultados con 1 decimal de precisión.

Fórmulas:

°F = (°C * 9/5) + 32
K  = °C + 273.15


Ejemplo:

Ingrese su nombre: Carlos Ruiz
Ingrese la temperatura en °C: 25
Carlos Ruiz, la temperatura es:
- 77.0 °F
- 298.2 K

4. Cálculo del Salario de un Empleado

Una empresa necesita calcular el salario total de un empleado. El programa debe:

Pedir el nombre del empleado (texto).

Ingresar el salario base (real).

Ingresar el número de horas extras trabajadas (entero).

Cada hora extra se paga al 1.5x del valor de una hora normal.

Mostrar el salario total del empleado.

Ejemplo:

Ingrese el nombre del empleado: María Gómez
Ingrese el salario base: 1500000
Ingrese las horas extras trabajadas: 5
El salario total de María Gómez es de $1,218,750.

5. Registro de Vehículos en un Peaje

Un sistema de peajes debe registrar información de los vehículos que pasan. Se solicita:

Ingresar la placa del vehículo (texto).

Ingresar el tipo de vehículo (Carro, Moto, Camión).

Ingresar el peso del vehículo en toneladas (real).

Asignar una tarifa según el tipo de vehículo:

Carro: $10,000

Moto: $5,000

Camión: $20,000 + $2,000 por tonelada adicional.

Retornar una tupla con {placa, tipo, tarifa_final}.

Ejemplo:

Ingrese la placa del vehículo: ABC123
Ingrese el tipo de vehículo: Camión
Ingrese el peso del vehículo (toneladas): 5.0
Vehículo ABC123 (Camión) debe pagar $30,000.

6. Cálculo del Costo de Envío de un Paquete

Una empresa de envíos necesita calcular el costo de enviar un paquete. Se solicita:

Ingresar el nombre del cliente (texto).

Ingresar el peso del paquete en kg (real).

Ingresar el tipo de envío (Económico, Express, Internacional).

Aplicar la siguiente tarifa:

Económico: $5,000 por kg.

Express: $8,000 por kg.

Internacional:

Si el peso es ≤ 5 kg, se cobra $15,000 por kg.

Si el peso es > 5 kg, se cobra $12,000 por kg.

Usar if, cond y case con pattern matching en la solución.

Retornar una tupla con {cliente, peso, tipo_envio, costo_total}.
