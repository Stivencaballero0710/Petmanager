# Carga de datos

[Volver a SQL](../README.md)

[registros.sql](./registros.sql) contiene los datos entregados para el proyecto. Cada `INSERT` indica sus columnas y se cargan primero las filas referenciadas por las FK. La carga se ejecuta una sola vez sobre las tablas vacías.

Los registros se distribuyen de la siguiente manera:

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

Los empleados se distribuyen en diez veterinarios, diez secretarios y diez auxiliares. Los 40 registros clínicos se distribuyen en diez citas, diez vacunaciones, diez tratamientos y diez hospitalizaciones. Las filas de los subtipos comparten el identificador de su registro principal.

Estos conteos se obtuvieron al ejecutar la carga en la demostración SQLite del notebook. El conjunto de datos no se amplió ni se sustituyeron nombres, montos o cantidades.
