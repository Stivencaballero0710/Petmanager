-- 1. Consultar los clientes que tienen mascotas Labrador, Golden Retriever o Beagle.

SELECT nombre_cli, apellido_cli, telefono_cli, correo
FROM cliente
WHERE id_cliente IN (
    SELECT id_cliente
    FROM animal
    WHERE raza IN ('Labrador', 'Golden Retriever', 'Beagle')
);

-- 2. Consultar antibióticos, antiinflamatorios y analgésicos con entre 1 y 30 unidades.

SELECT tipo_medicamento, presentacion, dosis, cantidad
FROM medicamento
WHERE cantidad BETWEEN 1 AND 30
AND tipo_medicamento IN (
    'Antibiótico',
    'Antiinflamatorio',
    'Analgésico'
)
ORDER BY cantidad ASC;

-- 3. Consultar los clientes con facturas entre $100.001 y $200.000.

SELECT nombre_cli, apellido_cli, telefono_cli, correo
FROM cliente c
WHERE EXISTS (
    SELECT *
    FROM factura f
    WHERE f.id_cliente = c.id_cliente
    AND f.monto BETWEEN 100001 AND 200000
);

-- 4. Consultar los historiales abiertos entre enero y marzo de 2026.

SELECT id_animal, numero_registro,  fecha_apertura
FROM historial_clinico
WHERE fecha_apertura BETWEEN '2026-01-01' AND '2026-03-31'
ORDER BY fecha_apertura DESC;

-- 5. Consultar empleados con salarios entre $1.500.000 y $2.000.000 o mayores a $3.500.000.

SELECT id_empleado, nombre_emp, apellido_emp, telefono_emp, salario
FROM empleado
WHERE salario BETWEEN 1500000 AND 2000000
OR salario > 3500000
ORDER BY salario DESC;

-- 6. Consultar auxiliares de áreas diferentes a Laboratorio y Farmacia.

SELECT id_empleado, area_apoyo
FROM auxiliar
WHERE area_apoyo NOT IN ('Laboratorio', 'Farmacia')
ORDER BY area_apoyo ASC;

-- 7. Consultar las mascotas que tienen registros de vacunación.

SELECT id_animal, nombre_animal, raza, sexo
FROM animal a
WHERE EXISTS (
    SELECT *
    FROM historial_clinico h
    WHERE h.id_animal = a.id_animal
    AND EXISTS (
        SELECT *
        FROM registro_clinico r
        WHERE r.id_historial = h.id_historial
        AND EXISTS (
            SELECT *
            FROM vacunacion v
            WHERE v.id_registro = r.id_registro
        )
    )
);

-- 8. Consultar tratamientos cuyas indicaciones contienen Administrar o Aplicar.

SELECT id_registro, receta_medica, indicaciones
FROM tratamiento
WHERE indicaciones LIKE '%Administrar%'
OR indicaciones LIKE '%Aplicar%'
ORDER BY receta_medica ASC;

-- 9. Consultar inventarios con numero_stock menor que 100 o mayor que 200.

SELECT id_inventario, id_sucursal, numero_stock
FROM inventario
WHERE numero_stock < 100
OR numero_stock > 200
ORDER BY numero_stock DESC;

-- 10. Consultar las mascotas con hospitalizaciones de más de tres días.

SELECT id_animal, nombre_animal, raza, sexo
FROM animal a
WHERE EXISTS (
    SELECT *
    FROM historial_clinico h
    WHERE h.id_animal = a.id_animal
    AND EXISTS (
        SELECT *
        FROM registro_clinico r
        WHERE r.id_historial = h.id_historial
        AND EXISTS (
            SELECT *
            FROM hospitalizacion hp
            WHERE hp.id_registro = r.id_registro
            AND hp.duracion > 3
        )
    )
);
