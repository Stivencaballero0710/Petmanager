# Actualizaciones y eliminaciones

[Volver a SQL](../README.md)

[ejemplos.sql](./ejemplos.sql) contiene dos operaciones: la actualización del teléfono de un cliente y la eliminación de una hospitalización. Cada operación se ejecuta dentro de una transacción que finaliza con `ROLLBACK`, por lo que los datos iniciales se conservan.

Los ejemplos requieren tablas InnoDB y deben ejecutarse en una misma conexión.
