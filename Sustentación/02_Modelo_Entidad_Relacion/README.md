# 2. Modelo entidad-relación

El modelo se organiza en tres grupos: administración de la veterinaria, clientes y atención clínica, e inventario. El diagrama de la primera entrega permite seguir esas relaciones y las dos especializaciones.

| Relación | Interpretación en la implementación |
| --- | --- |
| Veterinaria con sucursales, empleados y clientes | Cada registro hijo pertenece a una veterinaria; una veterinaria puede tener varios. |
| Cliente con animales y facturas | Un cliente puede tener varias mascotas y facturas; cada una pertenece a un cliente. |
| Animal con historial clínico | Cada historial pertenece a un animal y la FK única evita dos historiales para el mismo animal. |
| Historial con registros clínicos | Un historial puede reunir múltiples atenciones en distintas fechas. |
| Sucursal con inventario | Cada inventario pertenece a una sucursal; la FK única impide duplicarlo para esa sucursal. |
| Inventario con medicamentos y elementos médicos | Cada producto registrado pertenece a un inventario. |
| Empleado con veterinario, secretario y auxiliar | Los subtipos comparten el identificador de empleado. |
| Registro clínico con cita, vacunación, tratamiento y hospitalización | Los subtipos comparten el identificador del registro clínico. |

La notación 1:1 del diseño se implementa con una FK única en la tabla hija: asegura como máximo un hijo por padre, pero no obliga a que todos los padres tengan uno. Las especializaciones tampoco imponen exclusividad ni cobertura total mediante PK y FK.


![Modelo E-R](../../Modelo%20E-R/Modelo/Modelo_Entidad_Relacion.png)

[Ver el diagrama completo](../../Modelo%20E-R/Modelo/Modelo_Entidad_Relacion.png)

[Volver al índice de la sustentación](../README.md) · [Siguiente: Modelo relacional y normalización](../03_Modelo_relacional_y_normalizacion/)
