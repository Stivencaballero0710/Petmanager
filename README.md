# PetManager — Bases de Datos I

Proyecto académico desarrollado para la asignatura **Bases de Datos I** de la Universidad Industrial de Santander, programa de Ingeniería de Sistemas.

**PetManager** es una base de datos para organizar la información de una clínica veterinaria. Relaciona clientes, mascotas, historiales clínicos, citas, vacunaciones, tratamientos, hospitalizaciones, empleados, sucursales, inventarios y facturas.

## Integrantes

| Nombre completo | Código |
|---|---:|
| Jannyer Stiven Caballero Domínguez | 2250191 |
| Carlos Iván Merlano Vergara | 2250188 |
| Andrés Felipe Rivera Carreño | 2250193 |
| Juan Sebastián Araujo Contreras | 2250142 |
| Juan Pablo Vera Suárez | 2241807 |

## Estructura del repositorio

El repositorio reúne las distintas etapas de desarrollo del proyecto.

| Carpeta | Contenido |
|---|---|
| [Modelo E-R](./Modelo%20E-R/) | Investigación, análisis del problema y diagramas de la primera entrega. |
| [Modelo Relacional](./Modelo%20Relacional/) | Modelo relacional en Excel e informe de normalización. |
| [SQL](./SQL/) | Creación de la base de datos, tablas, registros y consultas. |
| [Sustentación](./Sustentaci%C3%B3n/) | Material organizado en los seis apartados de la presentación final. |

## Modelo relacional y normalización

A partir del modelo entidad-relación se construyeron **18 tablas**, con sus atributos y restricciones de claves primarias, foráneas y unicidad.

El análisis de normalización conserva las 18 tablas desde la primera hasta la quinta forma normal, incluida BCNF. También se documenta una descomposición de **54 tablas en 6FN** como parte del estudio de las formas normales.

- [Modelo relacional normalizado en Excel](./Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx)
- [Informe de normalización en PDF](./Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf)

## Implementación en SQL

La base de datos se implementó en **MySQL**, con **18 tablas, 17 claves foráneas y 230 registros**. Incluye **10 consultas** sobre la información administrativa y clínica de la veterinaria.

Los archivos están organizados en la carpeta [SQL](./SQL/), con el esquema, los datos y las consultas del proyecto.

## Sustentación

La carpeta [Sustentación](./Sustentaci%C3%B3n/) presenta el análisis de la situación, el modelo entidad-relación, el modelo relacional y la normalización, la implementación SQL, la carga de datos y las consultas realizadas.
