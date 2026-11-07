# 6. Diez consultas sobre la base de datos

**Responsable:** Carlos Iván Merlano Vergara · **Duración:** 4:00 min

[Índice de la sustentación](../README.md) · [Volver al inicio](../../README.md)

> **ESTADO: faltan el SQL ejecutable y las evidencias de resultados.** Los diez objetivos siguientes son sugerencias de organización, **no consultas ya construidas ni ejecutadas**.

## Requisito de la presentación

Mostrar **10 consultas SQL pertinentes al tema del proyecto**, sustentadas en las tablas y datos realmente implementados.

## Archivo que debe añadirse

**Ruta sugerida:** Sustentacion/06_Consultas_SQL/03_consultas.sql

Cada consulta debería estar enumerada y acompañada de una breve explicación de su utilidad, el SQL ejecutable y una verificación de su resultado sobre datos cargados.

## Propuesta de diez consultas que pueden desarrollarse

| N.º | Pregunta que podría resolverse | Tablas relacionadas |
|---|---|---|
| 1 | ¿Qué animales están registrados por cada cliente? | CLIENTE, ANIMAL |
| 2 | ¿Qué facturas tiene cada cliente? | CLIENTE, FACTURA |
| 3 | ¿Qué empleados pertenecen a cada veterinaria? | VETERINARIA, EMPLEADO |
| 4 | ¿Qué sucursales corresponden a cada veterinaria? | VETERINARIA, SUCURSAL |
| 5 | ¿Qué inventario tiene cada sucursal? | SUCURSAL, INVENTARIO |
| 6 | ¿Qué medicamentos están relacionados con un inventario? | INVENTARIO, MEDICAMENTO |
| 7 | ¿Qué elementos médicos están relacionados con un inventario? | INVENTARIO, ELEMENTO_MEDICO |
| 8 | ¿Qué historiales clínicos se asocian a los animales? | ANIMAL, HISTORIAL_CLINICO |
| 9 | ¿Qué registros clínicos tiene cada historial? | HISTORIAL_CLINICO, REGISTRO_CLINICO |
| 10 | ¿Qué tipos de atención están representados en los registros clínicos? | REGISTRO_CLINICO, CITA, VACUNACION, TRATAMIENTO, HOSPITALIZACION |

Estas son preguntas **propuestas** a partir de las entidades conocidas, no promesas de consultas que ya funcionen. Las sentencias finales deben construirse con los nombres de columna y datos del esquema SQL real.

## Reparto de los cuatro minutos

- **0:00–0:25:** introducir qué permiten consultar los registros.
- **0:25–3:40:** mostrar las diez consultas, priorizando el resultado y una explicación corta de cada una.
- **3:40–4:00:** concluir qué información permite recuperar el modelo.

Las consultas complejas pueden agruparse visualmente, pero la profesora debe poder identificar las diez sentencias y sus resultados.

[**Volver al índice de sustentación**](../README.md)
