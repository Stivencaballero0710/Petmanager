# Modelo relacional de PetManager - 5FN

[Volver a normalización](./README.md) · [Modelo relacional en Excel](../../Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) · [Esquema SQL](../../SQL/02_Creacion_de_tablas/basededatosVeterinaria.sql)

## Diagrama del modelo relacional

```mermaid
erDiagram
    VETERINARIA {
        int id_veterinaria PK
        string nombre_vet
        string direccion_vet
    }
    SUCURSAL {
        int id_sucursal PK
        int id_veterinaria FK
        string direccion_suc
        string telefono_suc
    }
    INVENTARIO {
        int id_inventario PK
        int id_sucursal FK,UK
        int numero_stock
    }
    ELEMENTO_MEDICO {
        int id_elemento PK
        int id_inventario FK
        string funcion
        string marca
        string tipo_elemento
        int cantidad
    }
    MEDICAMENTO {
        int id_medicamento PK
        int id_inventario FK
        string tipo_medicamento
        string presentacion
        string dosis
        int cantidad
    }
    TRATAMIENTO {
        int id_registro PK,FK
        string receta_medica
        string indicaciones
    }
    EMPLEADO {
        int id_empleado PK
        int id_veterinaria FK
        string nombre_emp
        string apellido_emp
        string telefono_emp
        string direccion_emp
        decimal salario
    }
    VETERINARIO {
        int id_empleado PK,FK
        string registro_profesional
        string especialidad
    }
    SECRETARIO {
        int id_empleado PK,FK
        string turno
    }
    AUXILIAR {
        int id_empleado PK,FK
        string area_apoyo
    }
    CITA {
        int id_registro PK,FK
        string tipo_cita
        time hora
    }
    VACUNACION {
        int id_registro PK,FK
        string tipo_vacuna
        string dosis
    }
    CLIENTE {
        int id_cliente PK
        int id_veterinaria FK
        string nombre_cli
        string apellido_cli
        string telefono_cli
        string direccion_cli
        string correo
    }
    FACTURA {
        int id_factura PK
        int id_cliente FK
        int numero_factura UK
        decimal monto
    }
    ANIMAL {
        int id_animal PK
        int id_cliente FK
        string nombre_animal
        string raza
        string sexo
    }
    HISTORIAL_CLINICO {
        int id_historial PK
        int id_animal FK,UK
        int numero_registro
        date fecha_apertura
    }
    REGISTRO_CLINICO {
        int id_registro PK
        int id_historial FK
        date fecha_registro
        text observacion
    }
    HOSPITALIZACION {
        int id_registro PK,FK
        int duracion
        string sala
    }

    VETERINARIA ||--o{ SUCURSAL : id_veterinaria
    SUCURSAL ||--o| INVENTARIO : id_sucursal
    INVENTARIO ||--o{ ELEMENTO_MEDICO : id_inventario
    INVENTARIO ||--o{ MEDICAMENTO : id_inventario
    VETERINARIA ||--o{ EMPLEADO : id_veterinaria
    EMPLEADO ||--o| VETERINARIO : id_empleado
    EMPLEADO ||--o| SECRETARIO : id_empleado
    EMPLEADO ||--o| AUXILIAR : id_empleado
    VETERINARIA ||--o{ CLIENTE : id_veterinaria
    CLIENTE ||--o{ FACTURA : id_cliente
    CLIENTE ||--o{ ANIMAL : id_cliente
    ANIMAL ||--o| HISTORIAL_CLINICO : id_animal
    HISTORIAL_CLINICO ||--o{ REGISTRO_CLINICO : id_historial
    REGISTRO_CLINICO ||--o| CITA : id_registro
    REGISTRO_CLINICO ||--o| VACUNACION : id_registro
    REGISTRO_CLINICO ||--o| TRATAMIENTO : id_registro
    REGISTRO_CLINICO ||--o| HOSPITALIZACION : id_registro
```

## Consideraciones de implementación

- `registro_clinico.observacion` es opcional y admite valores `NULL`.
- `cita.hora` utiliza el tipo `TIME`; la fecha de atención se almacena en `registro_clinico.fecha_registro`.
- Los montos y salarios utilizan los tipos `DECIMAL(12,2)` y `DECIMAL(10,2)`, respectivamente.
- `numero_stock` es el campo de inventario almacenado. `cantidad_total` no se implementa como columna física.
- Las claves foráneas únicas limitan a un inventario por sucursal y a un historial clínico por animal.

[Informe de normalización](../../Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) · [Siguiente: Esquema SQL](../04_Base_de_datos_en_SQL/)
