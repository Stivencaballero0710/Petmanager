# 3. Modelo relacional y normalización

Cada entidad se transforma en una tabla. En las relaciones 1:N, la FK se ubica en el lado N; en las relaciones 1:1, esa FK además es única. Los subtipos utilizan una misma columna como PK y FK.

| Restricción | Ejemplo | Función |
| --- | --- | --- |
| PK | `cliente.id_cliente` | Identifica al cliente. |
| FK | `animal.id_cliente` | Evita una mascota asociada a un cliente inexistente. |
| UK | `factura.numero_factura` | Impide repetir el número de factura. |
| UK sobre FK | `historial_clinico.id_animal` | Limita a un historial por animal. |
| NN | `animal.nombre_animal` | Exige un valor para el atributo. |

### Proceso de normalización

| Etapa | Revisión aplicada |
| --- | --- |
| 1FN | Cada atributo contiene un valor de su dominio; no se almacenan grupos repetidos. |
| 2FN | Las claves candidatas declaradas son simples, por lo que no existen dependencias parciales respecto a ellas. |
| 3FN y BCNF | Bajo las dependencias documentadas, los determinantes son claves y no se introducen dependencias transitivas entre atributos no clave. |
| 4FN y 5FN | Se conserva el modelo bajo el supuesto de que no hay dependencias multivaluadas independientes ni dependencias de reunión adicionales a las declaradas. |
| 6FN | El ejercicio descompone atributos en 54 tablas: 18 tablas base y 36 proyecciones adicionales. |

Por ejemplo, `id_cliente` determina nombre, apellido, teléfono, dirección, correo e identificación de la veterinaria. Los datos de contacto se guardan en `cliente`, por lo que cada mascota solo necesita `id_cliente` para relacionarse con su propietario.

Para SQL se conservan las **18 tablas de la propuesta de implementación**, lo que evita las uniones adicionales de la descomposición en 6FN. Esta decisión coincide con la recomendación del informe. La afirmación de normalización depende de las reglas de negocio declaradas; no se deduce únicamente de tener claves primarias.

En 6FN, los atributos obligatorios requieren cobertura de los identificadores de su tabla base. La observación clínica es opcional y se reconstruye con `LEFT JOIN`. En las 18 tablas implementadas esa condición se expresa como `observacion TEXT NULL`.


[Excel del modelo](../../Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) · [Informe de normalización](../../Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf)

[Volver a la sustentación](../README.md) · [Abrir notebook](../PetManager_Proyecto_Final.ipynb)
