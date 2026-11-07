# 2. Modelo entidad–relación (E-R)

**Responsable:** Juan Pablo Vera Suárez · **Duración:** 2:30 min

[Índice de la sustentación](../README.md) · [Siguiente: Normalización →](../03_Modelo_relacional_y_normalizacion/README.md)

## Diagrama de la primera entrega

![Diagrama E-R de PetManager](../../Modelo%20E-R/Modelo/Modelo_Entidad_Relacion.png)

[**Abrir diagrama en tamaño completo**](../../Modelo%20E-R/Modelo/Modelo_Entidad_Relacion.png) · [Documentación del modelo](../../Modelo%20E-R/Modelo/README.md)

## Aspectos centrales que deben explicarse

- **Entidades:** representación de veterinarias, sucursales, clientes, animales, empleados, inventarios y procesos clínicos.
- **Atributos e identificadores:** datos que describen cada entidad y claves utilizadas para relacionarlas.
- **Cardinalidades 1:N:** una veterinaria se relaciona con varias sucursales; un cliente puede estar asociado con varios animales.
- **Relaciones 1:1:** inventario asociado a sucursal e historial clínico asociado a animal, según las restricciones del modelo relacional documentado.
- **Especialización:** EMPLEADO con VETERINARIO, SECRETARIO y AUXILIAR; REGISTRO_CLINICO con CITA, VACUNACION, TRATAMIENTO y HOSPITALIZACION.

La primera propuesta de diagrama también se conserva en [Primera_Propuesta.png](../../Modelo%20E-R/Modelo/Primera_Propuesta.png), pero para sustentar se debe usar el diagrama de la entrega.

## Orden para la explicación

1. Mostrar el diagrama completo sin leer cada atributo.
2. Identificar las entidades principales y qué información representan.
3. Señalar uno o dos ejemplos de relaciones con sus cardinalidades.
4. Mencionar las especializaciones y conectar el diagrama con las 18 tablas del modelo relacional.

## Transición

El modelo E-R sirvió como punto de partida para definir tablas, claves y dependencias. La revisión de esa estructura corresponde al tercer punto.

[**3. Ir al modelo relacional y normalización →**](../03_Modelo_relacional_y_normalizacion/README.md)
