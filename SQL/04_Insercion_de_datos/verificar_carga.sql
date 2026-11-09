-- Cada tabla debe tener al menos 5 registros.
USE petmanager;

SELECT 'veterinaria' AS tabla, COUNT(*) AS registros FROM veterinaria
UNION ALL
SELECT 'sucursal' AS tabla, COUNT(*) AS registros FROM sucursal
UNION ALL
SELECT 'inventario' AS tabla, COUNT(*) AS registros FROM inventario
UNION ALL
SELECT 'elemento_medico' AS tabla, COUNT(*) AS registros FROM elemento_medico
UNION ALL
SELECT 'medicamento' AS tabla, COUNT(*) AS registros FROM medicamento
UNION ALL
SELECT 'empleado' AS tabla, COUNT(*) AS registros FROM empleado
UNION ALL
SELECT 'veterinario' AS tabla, COUNT(*) AS registros FROM veterinario
UNION ALL
SELECT 'secretario' AS tabla, COUNT(*) AS registros FROM secretario
UNION ALL
SELECT 'auxiliar' AS tabla, COUNT(*) AS registros FROM auxiliar
UNION ALL
SELECT 'cliente' AS tabla, COUNT(*) AS registros FROM cliente
UNION ALL
SELECT 'factura' AS tabla, COUNT(*) AS registros FROM factura
UNION ALL
SELECT 'animal' AS tabla, COUNT(*) AS registros FROM animal
UNION ALL
SELECT 'historial_clinico' AS tabla, COUNT(*) AS registros FROM historial_clinico
UNION ALL
SELECT 'registro_clinico' AS tabla, COUNT(*) AS registros FROM registro_clinico
UNION ALL
SELECT 'cita' AS tabla, COUNT(*) AS registros FROM cita
UNION ALL
SELECT 'vacunacion' AS tabla, COUNT(*) AS registros FROM vacunacion
UNION ALL
SELECT 'tratamiento' AS tabla, COUNT(*) AS registros FROM tratamiento
UNION ALL
SELECT 'hospitalizacion' AS tabla, COUNT(*) AS registros FROM hospitalizacion;
