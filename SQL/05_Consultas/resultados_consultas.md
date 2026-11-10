# Resultados de las consultas

[Consultas SQL](./consultas.sql) · [Volver a consultas](./README.md)

Resultados de las consultas sobre los datos de `registros.sql`.

## 1. Clientes con mascotas de determinadas razas

Localizar propietarios de mascotas Labrador, Golden Retriever o Beagle.

**Resultado (3 filas):** Andres Gomez, Juan Lopez y Pedro Castro.

## 2. Medicamentos con pocas existencias

Revisar antibióticos, antiinflamatorios y analgésicos con entre 1 y 30 unidades.

**Resultado (2 filas):** Antiinflamatorio inyectable: 20 unidades; antibiótico inyectable: 25. El filtro no incluye productos agotados.

## 3. Clientes con facturas de valores elevados

Identificar clientes con alguna factura entre $100.001 y $200.000.

**Resultado (5 filas):** Laura Martinez, Maria Rodriguez, Daniel Torres, Camila Diaz y Pedro Castro.

## 4. Historiales abiertos en el primer trimestre de 2026

Consultar la apertura de historiales entre el 1 de enero y el 31 de marzo.

**Resultado (10 filas):** Los diez historiales están dentro del periodo consultado.

## 5. Empleados según su salario

Filtrar salarios entre $1.500.000 y $2.000.000 o superiores a $3.500.000.

**Resultado (28 filas):** 28 empleados. Los empleados 1 y 7 quedan fuera porque ganan exactamente $3.500.000.

## 6. Auxiliares de otras áreas

Consultar auxiliares de áreas distintas de Laboratorio y Farmacia.

**Resultado (6 filas):** Seis auxiliares: identificadores 22, 23, 24, 27, 28 y 29.

## 7. Mascotas con vacunación registrada

Recorrer mascota, historial y registro clínico para identificar las mascotas con vacunación registrada.

**Resultado (10 filas):** Las diez mascotas tienen una vacunación registrada.

## 8. Tratamientos según sus indicaciones

Buscar indicaciones que contengan Administrar o Aplicar.

**Resultado (10 filas):** Los diez tratamientos cumplen el filtro.

## 9. Inventarios que requieren revisión

Filtrar el valor almacenado en numero_stock cuando es menor que 100 o mayor que 200.

**Resultado (3 filas):** Inventarios 7 (250), 10 (220) y 6 (90). Los valores 100 y 200 no se incluyen.

## 10. Mascotas con hospitalizaciones prolongadas

Encontrar mascotas con una hospitalización de más de tres días.

**Resultado (3 filas):** Rocky (4 días), Nala (5 días) y Lola (4 días).

