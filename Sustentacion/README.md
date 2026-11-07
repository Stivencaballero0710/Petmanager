# 🎓 Sustentación del proyecto final — PetManager

**Bases de Datos I · Universidad Industrial de Santander · Máximo 15 minutos**

> **[Abrir el Notebook para presentar](./Notebook_PetManager.ipynb)** · [Volver al inicio](../README.md) · [Ver requisitos pendientes](./CHECKLIST.md)

Esta guía sigue exactamente el orden de los **seis contenidos exigidos** por la profesora. Los enlaces llevan a las evidencias reales de las entregas y a los espacios donde se incorporarán los scripts SQL.

## Orden y cronómetro

| Orden | Inicio–fin estimado | Presenta | Tema | Duración |
|---|---|---|---|---:|
| 1 | 0:00–1:30 | Juan Sebastián Araujo | [Análisis de la situación](./01_Analisis_de_la_situacion/README.md) | 1:30 |
| 2 | 1:30–4:00 | Juan Pablo Vera | [Modelo entidad-relación](./02_Modelo_entidad_relacion/README.md) | 2:30 |
| 3 | 4:00–7:00 | Jannyer Stiven Caballero | [Modelo relacional y normalización](./03_Modelo_relacional_y_normalizacion/README.md) | 3:00 |
| 4 | 7:00–9:30 | Andrés Felipe Rivera | [Esquema SQL](./04_Base_de_datos_SQL/README.md) | 2:30 |
| 5 | 9:30–10:30 | Carlos Iván Merlano | [Carga de datos](./05_Carga_de_datos/README.md) | 1:00 |
| 6 | 10:30–14:30 | Carlos Iván Merlano | [10 consultas SQL](./06_Consultas_SQL/README.md) | 4:00 |

**14:30 de exposición + 0:30 de transiciones = 15:00 máximo.** El cronómetro anterior cuenta solo intervenciones; durante los ensayos conviene mantener las transiciones dentro del margen final.

## Ruta de presentación

### 1. Análisis de la situación — Araujo (1:30)

**Mostrar:** [documento de la primera entrega](../Modelo%20E-R/Documento/README.md) y [explicación resumida](./01_Analisis_de_la_situacion/README.md).

**Explicar:** qué problema de organización de datos se busca resolver, por qué una base de datos relacional y cuál es el alcance académico de PetManager.

### 2. Modelo E-R — Vera (2:30)

**Mostrar:** [diagrama E-R](../Modelo%20E-R/Modelo/Modelo_Entidad_Relacion.png) y [guía del modelo](./02_Modelo_entidad_relacion/README.md).

**Explicar:** entidades, cardinalidades, especializaciones y paso del diseño conceptual al relacional.

### 3. Modelo relacional y normalización — Caballero (3:00)

**Mostrar:** [Excel](../Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx), [informe PDF](../Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) y [resumen para exponer](./03_Modelo_relacional_y_normalizacion/README.md).

**Explicar:** 18 tablas iniciales, PK/FK/UK/NN, revisión de 1FN a 5FN y BCNF, ejemplo de CLIENTE en 6FN, 54 tablas resultantes y elección de las 18 tablas de 5FN para implementar.

### 4. Base de datos construida en SQL — Rivera (2:30)

**Mostrar:** **el script real de creación** cuando se incorpore a [este apartado](./04_Base_de_datos_SQL/README.md).

**Explicar:** construcción del esquema, tipos de datos, PK, FK, UK, NN y orden de creación. **Todavía no hay evidencia SQL publicada en el repositorio.**

### 5. Carga de datos — Merlano (1:00)

**Mostrar:** los INSERT reales y comprobación de **al menos cinco registros por tabla** cuando se añadan a [este apartado](./05_Carga_de_datos/README.md). **Aún no se ha publicado el script de carga.**

### 6. Diez consultas SQL — Merlano (4:00)

**Mostrar:** diez consultas pertinentes al proyecto, con SQL ejecutable y resultados verificables. [Guía de consultas](./06_Consultas_SQL/README.md). **Aún no se encuentran esos archivos.**

## Recomendaciones para el día de la sustentación

- Abrir el **Notebook** desde la parte superior de este documento y avanzar en el orden 1–6.
- Evitar mostrar código demasiado largo; priorizar las partes importantes y los resultados.
- No presentar como ejecutadas o completas consultas que todavía no están incorporadas al repositorio.
- Revisar el estado de los entregables en [CHECKLIST.md](./CHECKLIST.md) antes de la presentación.

[Volver al repositorio](../README.md)
