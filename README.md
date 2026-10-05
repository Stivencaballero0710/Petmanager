<h1 align="center">PetManager</h1>

<p align="center">
  Diseño de una base de datos para la gestión de una clínica veterinaria<br>
  <strong>Bases de Datos I · Universidad Industrial de Santander</strong><br>
  Grupo G1 · 2026-2
</p>

<p align="center">
  <img src="./Modelo%20E-R/Documento/imagenes/petmanager.png" alt="Presentación del proyecto PetManager" width="620">
</p>

<p align="center">
  <a href="./Modelo%20E-R/">Modelo E-R</a> ·
  <a href="./Modelo%20Relacional/">Modelo relacional</a> ·
  <a href="./Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf">Informe de normalización</a>
</p>

## Sobre el proyecto

PetManager reúne el diseño de los datos que necesita una veterinaria para registrar sus sucursales, empleados, clientes, animales, inventario y atención clínica. El trabajo parte del modelo entidad-relación y continúa con su transformación a tablas y la aplicación de las formas normales.

Cada etapa conserva sus documentos y modelos para revisar cómo se construyó la propuesta.

## Entregas del proyecto

El contenido se organiza en las **dos carpetas principales** solicitadas para la entrega:

| Carpeta | Etapa | Contenido |
| --- | --- | --- |
| [**Modelo E-R**](./Modelo%20E-R/) | Primera entrega | Investigación del problema, documento de la propuesta, modelo entidad-relación y su primera versión. |
| [**Modelo Relacional**](./Modelo%20Relacional/) | Segunda entrega | Modelo relacional normalizado en Excel e informe de aplicación de los pasos de normalización en PDF. |

### Archivos principales

| Material | Acceso | Formato |
| --- | --- | --- |
| Documento de la primera entrega | [Leer documento](./Modelo%20E-R/Documento/README.md) | Markdown |
| Diagrama entidad-relación | [Ver diagrama](./Modelo%20E-R/Modelo/Modelo_Entidad_Relacion.png) | PNG |
| Modelo relacional y etapas de normalización | [Abrir archivo](./Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) | Excel |
| Informe de aplicación de la normalización | [Leer informe](./Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) | PDF |

**Para consultar el Excel:** abre el enlace del archivo, selecciona **Download raw file** o el botón de descarga de GitHub y ábrelo en Excel o LibreOffice Calc.

## Qué representa el modelo

| Área | Tablas del modelo de partida |
| --- | --- |
| Organización de la veterinaria | `VETERINARIA`, `SUCURSAL` |
| Inventario e insumos | `INVENTARIO`, `ELEMENTO_MEDICO`, `MEDICAMENTO` |
| Personal | `EMPLEADO`, `VETERINARIO`, `SECRETARIO`, `AUXILIAR` |
| Clientes, animales y facturación | `CLIENTE`, `ANIMAL`, `FACTURA` |
| Atención clínica | `HISTORIAL_CLINICO`, `REGISTRO_CLINICO`, `CITA`, `VACUNACION`, `TRATAMIENTO`, `HOSPITALIZACION` |

El modelo de partida contiene **18 tablas**. El Excel conserva esa estructura desde **1FN hasta 5FN**, incluida **BCNF**, bajo las dependencias y reglas de negocio documentadas. En **6FN** presenta **54 tablas**: 18 tablas base y 36 proyecciones adicionales de atributos.

La explicación de cada paso está en el [informe](./Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf). Las claves, los supuestos y las relaciones resultantes se detallan en las hojas `Dependencias` y `Relaciones_6FN` del Excel.

## Cómo revisar el trabajo

1. Lee el [documento de la primera entrega](./Modelo%20E-R/Documento/README.md) para conocer el problema y la propuesta.
2. Revisa el [diagrama E-R](./Modelo%20E-R/Modelo/) para identificar las entidades y sus relaciones.
3. Descarga el [Excel del modelo relacional](./Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) y comienza por la hoja `modelo`.
4. Consulta `Dependencias` y sigue las hojas de las formas normales junto con el [informe](./Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf).
5. Revisa `6FN` y `Relaciones_6FN` para consultar la descomposición y sus referencias.

## Integrantes

| Nombre completo | Código |
| --- | --- |
| Jannyer Stiven Caballero Domínguez | 2250191 |
| Carlos Iván Merlano Vergara | 2250188 |
| Andrés Felipe Rivera Carreño | 2250193 |
| Juan Sebastián Araujo Contreras | 2250142 |
| Juan Pablo Vera Suárez | 2241807 |

Escuela de Ingeniería de Sistemas e Informática · Universidad Industrial de Santander
