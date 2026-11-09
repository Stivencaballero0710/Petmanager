# 6. Consultas sobre la base de datos

Las diez consultas responden preguntas sobre clientes, salarios, medicamentos, inventarios y atención clínica. Se utilizan `WHERE`, `BETWEEN`, `IN`, `NOT IN`, `LIKE`, `ORDER BY` y subconsultas con `EXISTS`.

`EXISTS` permite saber si hay al menos una fila relacionada sin duplicar al cliente o a la mascota cuando tiene varios registros que cumplen la condición. En las consultas 7 y 10 se recorre la relación animal, historial, registro clínico y tipo de atención.


| N.º | Consulta | Filas |
| --- | --- | --- |
| 1 | Clientes con mascotas de determinadas razas | 3 |
| 2 | Medicamentos con pocas existencias | 2 |
| 3 | Clientes con facturas de valores elevados | 5 |
| 4 | Historiales abiertos en el primer trimestre de 2026 | 10 |
| 5 | Empleados según su salario | 28 |
| 6 | Auxiliares de otras áreas | 6 |
| 7 | Mascotas con vacunación registrada | 10 |
| 8 | Tratamientos según sus indicaciones | 10 |
| 9 | Inventarios que requieren revisión | 3 |
| 10 | Mascotas con hospitalizaciones prolongadas | 3 |

[Diez consultas](../../SQL/05_Consultas/consultas.sql) · [Interpretación de resultados](../../SQL/05_Consultas/resultados_esperados.md)

[Volver a la sustentación](../README.md) · [Abrir notebook](../PetManager_Proyecto_Final.ipynb)
