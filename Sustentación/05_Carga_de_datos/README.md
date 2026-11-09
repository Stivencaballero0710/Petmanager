# 5. Carga de datos al modelo

El archivo de carga contiene 230 registros. Las entidades principales se insertan antes de sus tablas dependientes y cada `INSERT` indica explícitamente sus columnas.

Hay 30 empleados, 40 registros clínicos y 10 registros en cada una de las otras 16 tablas. Los 40 registros clínicos corresponden a diez citas, diez vacunaciones, diez tratamientos y diez hospitalizaciones. Se cumple el requisito de al menos cinco registros por tabla.


| Tabla | Registros |
| --- | --- |
| animal | 10 |
| auxiliar | 10 |
| cita | 10 |
| cliente | 10 |
| elemento_medico | 10 |
| empleado | 30 |
| factura | 10 |
| historial_clinico | 10 |
| hospitalizacion | 10 |
| inventario | 10 |
| medicamento | 10 |
| registro_clinico | 40 |
| secretario | 10 |
| sucursal | 10 |
| tratamiento | 10 |
| vacunacion | 10 |
| veterinaria | 10 |
| veterinario | 10 |

**Total: 230 registros.** Todas las tablas tienen al menos diez filas.

[Carga de datos](../../SQL/04_Insercion_de_datos/registros.sql) · [Consulta de conteos](../../SQL/04_Insercion_de_datos/verificar_carga.sql)

[Volver a la sustentación](../README.md) · [Abrir notebook](../PetManager_Proyecto_Final.ipynb)
