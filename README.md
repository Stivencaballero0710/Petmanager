# PetManager — Bases de Datos I

Proyecto desarrollado para la asignatura **Bases de Datos I** de la Universidad Industrial de Santander.

**PetManager** plantea una base de datos para apoyar la gestión de una clínica veterinaria enfocada en animales domésticos. El proyecto organiza información de propietarios, mascotas, citas, consultas, diagnósticos, tratamientos, vacunación, exámenes, inventario, facturación, pagos y seguimiento.

## Integrantes

| Nombre completo | Código |
|---|---:|
| Jannyer Stiven Caballero Domínguez | 2250191 |
| Carlos Iván Merlano Vergara | 2250188 |
| Andrés Felipe Rivera Carreño | 2250193 |
| Juan Sebastián Araujo Contreras | 2250142 |
| Juan Pablo Vera Suárez | 2241807 |

## Estructura del repositorio

El repositorio se divide por etapas del proyecto. Cada entrega reúne únicamente el material correspondiente a ese momento del curso.

| Ruta | Propósito |
|---|---|
| [Modelo E-R](./Modelo%20E-R/) | Todos los archivos de la primera entrega: investigación inicial, diagramas y documento consolidado. |
| [Modelo Relacional](./Modelo%20Relacional/) | Modelo relacional normalizado e informe de aplicación de los pasos de normalización de la segunda entrega. |

## Segunda entrega: modelo relacional y normalización

A partir del modelo entidad-relación se construyó el modelo relacional de PetManager, definiendo las tablas, sus atributos, tipos de dato y restricciones **PK, FK, UK y NN**.

Esta entrega contiene:

- [**Modelo relacional normalizado en Excel**](./Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx): incluye el modelo de partida, una hoja por cada forma normal, las dependencias y las relaciones del esquema en 6FN.
- [**Informe de aplicación de la normalización en PDF**](./Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf): explica la revisión de **1FN, 2FN, 3FN, BCNF, 4FN, 5FN y 6FN**, con ejemplos del proyecto y los resultados de cada etapa.

El análisis conserva las 18 tablas de partida hasta 5FN, incluida BCNF, bajo las dependencias documentadas. En 6FN se presentan 54 tablas como resultado de la descomposición. Para consultar el Excel, descarga el archivo desde GitHub y ábrelo en Excel o LibreOffice Calc.

## Alcance general de PetManager

Durante el desarrollo del proyecto se busca construir un modelo de datos que permita mantener trazabilidad entre la atención clínica y los procesos administrativos de la veterinaria. La prioridad es evitar duplicidad de información, conservar el historial de cada mascota y permitir consultas claras sobre citas, tratamientos, inventario y facturación.
