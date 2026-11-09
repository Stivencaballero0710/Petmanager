# Creación de tablas

[Volver a SQL](../README.md)

[basededatosVeterinaria.sql](./basededatosVeterinaria.sql) crea las 18 tablas en orden: primero las entidades independientes, después las que usan claves foráneas y finalmente sus especializaciones.

Las PK identifican cada fila; las 17 FK mantienen las referencias. `inventario.id_sucursal`, `historial_clinico.id_animal` y `factura.numero_factura` son únicos. Los subtipos comparten la PK de su entidad principal.

El esquema conserva las 18 tablas de la propuesta de implementación. Las 54 tablas del ejercicio en 6FN permanecen documentadas en la segunda entrega y no se crean en este script.

Consulta las [decisiones del esquema](../03_Modificaciones/) y continúa con la [carga de datos](../04_Insercion_de_datos/).
