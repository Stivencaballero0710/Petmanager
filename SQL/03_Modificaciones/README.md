# Decisiones de implementación

[Volver a SQL](../README.md) · [Modelo relacional](../../Modelo%20Relacional/)

Las siguientes decisiones forman parte del esquema implementado. No es necesario ejecutar instrucciones `ALTER TABLE` después de crear las tablas.

| Elemento | Implementación |
| --- | --- |
| `registro_clinico.observacion` | Es un campo opcional y admite `NULL`. |
| `cita.hora` | Se almacena como `TIME`; la fecha de atención se registra en `registro_clinico.fecha_registro`. |
| Montos y salarios | Se utilizan `DECIMAL(12,2)` para montos y `DECIMAL(10,2)` para salarios. |
| Motor de almacenamiento | Las tablas utilizan InnoDB y las claves foráneas mantienen la integridad referencial. |
| Inserciones | Cada sentencia `INSERT` especifica las columnas que recibe. |

## Restricciones y alcance

- `numero_stock` es el campo de inventario almacenado en la tabla `inventario`. `cantidad_total` no se implementa como columna física; la consulta 9 utiliza `numero_stock`.
- Las claves únicas de `inventario.id_sucursal` y `historial_clinico.id_animal` permiten como máximo un inventario por sucursal y un historial por animal.
- Las tablas `veterinario`, `secretario` y `auxiliar` comparten la clave de `empleado`. Las tablas `cita`, `vacunacion`, `tratamiento` y `hospitalizacion` comparten la clave de `registro_clinico`.
- Las claves primarias compartidas no obligan a que cada empleado o registro clínico tenga un subtipo ni establecen exclusividad entre subtipos.
- `correo`, `registro_profesional` y `numero_registro` no tienen restricciones `UNIQUE` en el esquema.
- La factura se relaciona directamente con el cliente. El esquema no incluye detalle de facturas, pagos, asignación de veterinarios a citas, usuarios ni permisos.
