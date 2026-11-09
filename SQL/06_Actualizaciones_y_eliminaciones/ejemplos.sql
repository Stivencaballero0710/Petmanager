-- Ejercicio opcional. Los cambios se revierten al final de cada transacción.
-- Ejecutar con InnoDB sobre los datos de práctica.
USE petmanager;

START TRANSACTION;
UPDATE cliente SET telefono_cli = '3200000000' WHERE id_cliente = 1;
SELECT id_cliente, nombre_cli, telefono_cli FROM cliente WHERE id_cliente = 1;
ROLLBACK;

START TRANSACTION;
DELETE FROM hospitalizacion WHERE id_registro = 31;
SELECT COUNT(*) AS hospitalizaciones_durante_el_ejemplo FROM hospitalizacion;
ROLLBACK;

SELECT COUNT(*) AS hospitalizaciones_restauradas FROM hospitalizacion;
