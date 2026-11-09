# Ajustes de la entrega final

[Volver a SQL](../README.md) · [Modelo relacional](../../Modelo%20Relacional/)

Los ajustes ya están incluidos en el esquema y los datos de la entrega. No hay que ejecutar un `ALTER TABLE` después de crear las tablas.

| Elemento | Ajuste y motivo |
| --- | --- |
| `registro_clinico.observacion` | Se permite `NULL`, como indica la hoja `modelo` del Excel. La observación es opcional. |
| `cita.hora` | Se usa `TIME`, de acuerdo con el modelo. La fecha está en `registro_clinico.fecha_registro`. Las diez fechas de las citas recibidas coinciden con las de sus registros, por lo que se conserva su hora sin perder la fecha de la atención. |
| Montos y salarios | Se conservan `DECIMAL(12,2)` y `DECIMAL(10,2)` del SQL recibido para expresar valores monetarios. Son la concreción de los campos numéricos del modelo. |
| Creación y carga | Se añade la selección de la base, se declara InnoDB y cada `INSERT` enumera sus columnas. |
| Consultas | Se elimina un guion aislado antes de la consulta 6, se usa `SELECT 1` en `EXISTS` y se ordenan las consultas de clientes y mascotas para facilitar su revisión. |

## Interpretación del modelo implementado

- `numero_stock` conserva el valor cargado en el archivo de datos. No es el atributo derivado `cantidad_total`: este último se obtiene sumando cantidades de medicamentos y elementos médicos y no se almacena como columna. Los valores recibidos no coinciden con esa suma; la consulta 9 filtra exclusivamente `numero_stock`.
- Las FK únicas limitan cada sucursal a **como máximo un inventario** y cada animal a **como máximo un historial**. Cada hijo tiene un padre obligatorio. La existencia de un hijo para todos los padres no queda impuesta por estas restricciones.
- Una PK que también es FK permite representar las especializaciones. No obliga a que todo empleado tenga un subtipo ni impide que aparezca en varios; lo mismo ocurre con los registros clínicos.
- No se añaden claves únicas sobre el correo, el registro profesional o el número de historial, porque no están declaradas como tales en el modelo relacional.
- La implementación registra la factura por cliente. No contiene detalle de facturas, pagos, asignación de veterinarios a citas, usuarios ni permisos. Esas funciones aparecen en la exploración inicial, pero no se presentan como parte del SQL final.
