-- Diez consultas de la entrega final.
USE petmanager;

-- 1. CLIENTES CON MASCOTAS DE DETERMINADAS RAZAS

SELECT nombre_cli, apellido_cli, telefono_cli, correo
FROM cliente
WHERE id_cliente IN (
    SELECT id_cliente
    FROM animal
    WHERE raza IN ('Labrador', 'Golden Retriever', 'Beagle')
)
ORDER BY id_cliente;

-- 2. MEDICAMENTOS QUE NECESITAN ATENCION EN EL INVENTARIO

SELECT tipo_medicamento, presentacion, dosis, cantidad
FROM medicamento
WHERE cantidad BETWEEN 1 AND 30
AND tipo_medicamento IN (
    'Antibiótico',
    'Antiinflamatorio',
    'Analgésico'
)
ORDER BY cantidad ASC;

-- 3. CLIENTES CON FACTURAS DE VALORES ELEVADOS
-- Identificar los clientes que tienen facturas cuyos
-- montos se encuentran entre $100.001 y $200.000.
--

SELECT nombre_cli, apellido_cli, telefono_cli, correo
FROM cliente c
WHERE EXISTS (
    SELECT 1
    FROM factura f
    WHERE f.id_cliente = c.id_cliente
    AND f.monto BETWEEN 100001 AND 200000
)
ORDER BY c.id_cliente;

-- 4. HISTORIALES CLINICOS ABIERTOS EN EL PRIMER
-- TRIMESTRE DE 2026
-- Consultar los historiales de las mascotas que fueron
-- registrados durante los primeros tres meses del año.

SELECT id_animal, numero_registro,  fecha_apertura
FROM historial_clinico
WHERE fecha_apertura BETWEEN '2026-01-01' AND '2026-03-31'
ORDER BY fecha_apertura DESC;

-- 5. EMPLEADOS SEGUN SU RANGO SALARIAL
-- Identificar empleados cuyos salarios estén entre
-- $1.500.000 y $2.000.000 o superen los $3.500.000.

SELECT id_empleado, nombre_emp, apellido_emp, telefono_emp, salario
FROM empleado
WHERE salario BETWEEN 1500000 AND 2000000
OR salario > 3500000
ORDER BY salario DESC;

-- 6. AUXILIARES QUE NO TRABAJAN EN LABORATORIO
-- NI EN FARMACIA
-- Consultar los auxiliares que desempeñan funciones
-- en otras áreas de apoyo de la veterinaria.

SELECT id_empleado, area_apoyo
FROM auxiliar
WHERE area_apoyo NOT IN ('Laboratorio', 'Farmacia')
ORDER BY area_apoyo ASC;

-- 7. MASCOTAS QUE TIENEN REGISTROS DE VACUNACION
-- Identificar los animales que cuentan con al menos
-- un registro de vacunación en su historial clínico.

SELECT id_animal, nombre_animal, raza, sexo
FROM animal a
WHERE EXISTS (
    SELECT 1
    FROM historial_clinico h
    WHERE h.id_animal = a.id_animal
    AND EXISTS (
        SELECT 1
        FROM registro_clinico r
        WHERE r.id_historial = h.id_historial
        AND EXISTS (
            SELECT 1
            FROM vacunacion v
            WHERE v.id_registro = r.id_registro
        )
    )
)
ORDER BY a.id_animal;

-- 8. TRATAMIENTOS SEGUN SUS INDICACIONES MEDICAS
-- Buscar tratamientos cuyas indicaciones incluyan
-- instrucciones para administrar o aplicar medicamentos.

SELECT id_registro, receta_medica, indicaciones
FROM tratamiento
WHERE indicaciones LIKE '%Administrar%'
OR indicaciones LIKE '%Aplicar%'
ORDER BY receta_medica ASC;

-- 9. INVENTARIOS CON NIVELES DE STOCK QUE REQUIEREN
-- REVISION
-- Identificar los inventarios con menos de 100 unidades
-- o con más de 200 unidades disponibles.

SELECT id_inventario, id_sucursal, numero_stock
FROM inventario
WHERE numero_stock < 100
OR numero_stock > 200
ORDER BY numero_stock DESC;

-- 10. MASCOTAS CON HOSPITALIZACIONES PROLONGADAS
-- Identificar los animales que tienen registros de
-- hospitalización con una duración superior a tres días.
--

SELECT id_animal, nombre_animal, raza, sexo
FROM animal a
WHERE EXISTS (
    SELECT 1
    FROM historial_clinico h
    WHERE h.id_animal = a.id_animal
    AND EXISTS (
        SELECT 1
        FROM registro_clinico r
        WHERE r.id_historial = h.id_historial
        AND EXISTS (
            SELECT 1
            FROM hospitalizacion hp
            WHERE hp.id_registro = r.id_registro
            AND hp.duracion > 3
        )
    )
)
ORDER BY a.id_animal;
