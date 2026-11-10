# Características del esquema

[Volver a SQL](../README.md) · [Modelo relacional](../../Modelo%20Relacional/)

El esquema define los tipos de datos y las restricciones de las tablas de PetManager.

| Elemento | Implementación |
| --- | --- |
| `registro_clinico.observacion` | Se almacena como `TEXT NOT NULL`; cada registro clínico incluye una observación. |
| `cita.hora` | Se almacena como `TIMESTAMP` e incluye la fecha y la hora de la cita. |
| Montos y salarios | Se utilizan `DECIMAL(12,2)` para montos y `DECIMAL(10,2)` para salarios. |

## Del modelo relacional al SQL

| Atributo | Modelo relacional | Implementación SQL |
| --- | --- | --- |
| `cita.hora` | Dominio `time`. | `TIMESTAMP NOT NULL`: almacena fecha y hora. |
| `registro_clinico.observacion` | Atributo opcional. | `TEXT NOT NULL`: la implementación exige una observación. |
| `salario` y `monto` | Dominio numérico. | `DECIMAL`: almacena los valores con dos decimales. |

Las entidades, las claves y sus relaciones se conservan. La definición SQL establece los tipos y la obligatoriedad de los campos que se utilizan en la base de datos.

## Restricciones y alcance

- `numero_stock` es el campo de inventario almacenado en la tabla `inventario`. `cantidad_total` no se implementa como columna física; la consulta 9 utiliza `numero_stock`.
- Las claves únicas de `inventario.id_sucursal` y `historial_clinico.id_animal` permiten como máximo un inventario por sucursal y un historial por animal.
- Las tablas `veterinario`, `secretario` y `auxiliar` comparten la clave de `empleado`. Las tablas `cita`, `vacunacion`, `tratamiento` y `hospitalizacion` comparten la clave de `registro_clinico`.
- Las claves primarias compartidas no obligan a que cada empleado o registro clínico tenga un subtipo ni establecen exclusividad entre subtipos.
- `correo`, `registro_profesional` y `numero_registro` no tienen restricciones `UNIQUE` en el esquema.
- La factura se relaciona directamente con el cliente. El esquema no incluye detalle de facturas, pagos, asignación de veterinarios a citas, usuarios ni permisos.

