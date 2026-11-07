# 3. Modelo relacional y normalización

**Responsable:** Jannyer Stiven Caballero Domínguez · **Duración:** 3:00 min

[Índice de la sustentación](../README.md) · [Siguiente: SQL →](../04_Base_de_datos_SQL/README.md)

## Evidencias reales de la segunda entrega

- 📊 [**ModeloRelacionalNormalizadoPetManager.xlsx**](../../Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx). Incluye hojas de modelo, 1FN–6FN, Dependencias y Relaciones_6FN.
- 📄 [**Informe_Normalizacion_PetManager.pdf**](../../Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf). Contiene el procedimiento, el caso CLIENTE, las restricciones y las conclusiones.
- [Guía de lectura de la segunda entrega](../../Modelo%20Relacional/README.md).

## Modelo relacional de partida

El diagrama E-R se transformó en **18 tablas**, entre ellas VETERINARIA, SUCURSAL, INVENTARIO, ELEMENTO_MEDICO, MEDICAMENTO, EMPLEADO, VETERINARIO, SECRETARIO, AUXILIAR, CLIENTE, FACTURA, ANIMAL, HISTORIAL_CLINICO, REGISTRO_CLINICO, CITA, VACUNACION, TRATAMIENTO y HOSPITALIZACION.

Se documentaron atributos, dominios y restricciones: **PK** (clave primaria), **FK** (clave foránea), **UK** (unicidad) y **NN** (dato obligatorio). Las dependencias se analizaron con base en las claves y reglas registradas en el Excel.

## Resultado de cada forma normal

| Forma normal | Qué se verificó | Resultado según el informe |
|---|---|---:|
| 1FN | Atributos atómicos y sin grupos repetidos | 18 tablas |
| 2FN | Sin dependencias parciales, con claves candidatas simples | 18 tablas |
| 3FN | Sin dependencias problemáticas entre atributos no clave | 18 tablas |
| BCNF | Los determinantes no triviales son superclaves | 18 tablas |
| 4FN | Sin dependencias multivaluadas independientes adicionales bajo los supuestos | 18 tablas |
| 5FN | Sin dependencias de reunión adicionales que exijan dividir tablas | 18 tablas |
| 6FN | Descomposición en proyecciones con identificador y atributo | **54 tablas** |

## Ejemplo para mostrar: CLIENTE en sexta forma normal

En el modelo inicial **CLIENTE** tenía siete atributos: id_cliente, id_veterinaria, nombre_cli, apellido_cli, telefono_cli, direccion_cli y correo. Al aplicar 6FN se conserva una tabla base CLIENTE (id_cliente, id_veterinaria) y se generan cinco proyecciones: CLIENTE_NOMBRE_CLI, CLIENTE_APELLIDO_CLI, CLIENTE_TELEFONO_CLI, CLIENTE_DIRECCION_CLI y CLIENTE_CORREO.

La descomposición completa obtuvo **54 tablas: 18 originales y 36 proyecciones adicionales**. Para reconstruir datos se emplean los identificadores compartidos y las operaciones JOIN, además de controlar las proyecciones obligatorias.

## ¿Cuál versión se eligió para SQL?

El informe **recomienda trabajar con las 18 tablas de 5FN** por su consulta más sencilla; las 54 tablas de 6FN son el resultado del ejercicio de normalización. No confundir la normalización documentada con una implementación SQL ya publicada.

## Guion de aproximadamente tres minutos

**0:00–0:35.** Presentar las 18 tablas y las claves principales.

**0:35–1:40.** Explicar de 1FN a 5FN y BCNF con uno o dos ejemplos: ANIMAL guarda id_cliente en vez de repetir los datos del cliente, y las claves simples evitan dependencias parciales.

**1:40–2:30.** Mostrar el caso CLIENTE: de una relación de siete atributos a seis relaciones en 6FN; explicar el paso de 18 a 54 tablas.

**2:30–3:00.** Concluir que se recomienda implementar las 18 tablas de 5FN para evitar tantas uniones y entregar el turno a SQL.

[**4. Ir a la construcción del esquema SQL →**](../04_Base_de_datos_SQL/README.md)
