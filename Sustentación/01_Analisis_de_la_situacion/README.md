# 1. Análisis de la situación

Una veterinaria maneja información de clientes, mascotas, atenciones, personal, insumos y facturas. Cuando estos datos quedan separados, consultar el historial de un animal exige revisar varios registros y se puede repetir información del propietario.

**Pregunta del proyecto:** ¿cómo organizar estos datos en una base relacional que permita conservar las referencias entre la atención de las mascotas y la información administrativa de la veterinaria?

**Objetivo:** diseñar e implementar una base de datos que reúna la información de la veterinaria y permita consultarla mediante SQL.

| Necesidad | Respuesta del modelo |
| --- | --- |
| Identificar al responsable de una mascota | `animal.id_cliente` enlaza cada mascota con su cliente. |
| Consultar antecedentes de atención | Un historial agrupa los registros clínicos del animal. |
| Distinguir los tipos de atención | Cita, vacunación, tratamiento y hospitalización se representan como subtipos. |
| Organizar la operación | Se relacionan veterinarias, sucursales, empleados e inventarios. |
| Consultar cobros e insumos | Las facturas se asocian a clientes; los medicamentos y elementos médicos, a inventarios. |

La entrega implementa estas funciones con 18 tablas. La exploración inicial también consideró pagos, exámenes, lotes, recordatorios, usuarios y permisos, pero esas funciones no forman parte del esquema construido. Tampoco se asigna un veterinario a cada cita ni se relaciona cada factura con una atención específica.


[Exploración de la primera entrega](../../Modelo%20E-R/Documento/README.md)

[Volver a la sustentación](../README.md) · [Abrir notebook](../PetManager_Proyecto_Final.ipynb)
