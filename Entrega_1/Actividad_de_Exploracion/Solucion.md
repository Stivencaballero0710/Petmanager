# Proyecto de Clase: Sistema de Gestión de Veterinaria - Base de Datos

![Sistema de Gestión Veterinaria](Files/vet1.png)

## Integrantes

- Andrés Felipe Rivera Carreño - 2250193
- Carlos Iván Merlano Vergara - 2250188
- Jannyer Stiven Caballero Domínguez - 2250191
- Juan Sebastián Araujo Contreras - 2250142
- Juan Pablo Vera Suárez - 2241807

---

## 1. Conceptos Fundamentales

- **Propietario o responsable:** Persona encargada del animal y responsable de autorizar su atención. Un propietario puede registrar múltiples mascotas, estableciendo una relación **1:N**. Sus datos personales deben protegerse conforme a la normativa vigente.

- **Paciente (mascota):** Animal doméstico atendido en la clínica. Se almacena información como nombre, especie, raza, sexo, edad, color, peso y alergias.

- **Historia clínica veterinaria:** Registro cronológico, privado y reservado que reúne la información relacionada con signos vitales, consultas, diagnósticos, tratamientos, procedimientos y evolución del paciente.

- **Cita y atención:** La cita permite gestionar la reserva de fecha, hora y profesional encargado, mientras que la atención registra los eventos que realmente ocurrieron durante la consulta.

- **Servicio veterinario:** Actividad ofrecida por la clínica, como consulta, cirugía, laboratorio, hospitalización o vacunación. Los servicios pueden activarse, desactivarse o modificar su precio.

- **Consentimiento informado:** Autorización firmada por el propietario o responsable para realizar procedimientos que pueden implicar algún riesgo, como cirugías o aplicación de anestesia.

- **Inventario y farmacia:** Permite controlar medicamentos, vacunas e insumos, registrando cantidades disponibles, lotes, proveedores y fechas de vencimiento.

- **Facturación y pagos:** Módulo encargado de registrar los servicios prestados, productos vendidos, valores totales y medios de pago utilizados, como efectivo, tarjeta de crédito, tarjeta débito, Addi o Sistecrédito.

- **Seguridad y privacidad:** Control de acceso al sistema mediante usuarios, roles y permisos, además de mecanismos de respaldo de información y auditoría.

- **Diagnóstico, tratamiento y prescripción:** Permite almacenar las enfermedades identificadas, medicamentos formulados, dosis, frecuencia, duración del tratamiento y recomendaciones realizadas por el profesional.

- **Vacunación** Control de las vacunas aplicado a cada mascota, registrando el tipo de vacuna, fecha de aplicación, lote, profesional responsable y próxima dosis programada. 

- **Hospitalización:** Registro de las mascotas que requieren permanecer en la clínica para observación o tratamiento. Incluye fecha de ingreso, diagnóstico, estado del paciente, medicamentos administrados y fecha de egreso.

---

## 2. Tendencias Actuales en el Sector

El desarrollo de software para la gestión clínica veterinaria ha evolucionado hacia arquitecturas más robustas que permiten manejar un volumen dinámico de datos. Las tendencias más destacadas incluyen:

**Sistemas Nativos en la Nube y Escalabilidad Dinámica:** La migración de bases de datos locales a servicios en la nube (como PostgreSQL alojado en plataformas PaaS) permite que las clínicas escalen sus recursos informáticos dependiendo de la demanda, facilitando el acceso remoto, seguro y sincronizado desde múltiples sedes o dispositivos móviles.

**Seguridad de Datos y Control de Acceso Basado en Roles (RBAC):** Ante la digitalización de historias clínicas y datos de facturación, los sistemas modernos implementan arquitecturas de confianza cero (Zero Trust) a nivel de base de datos. Esto incluye el enmascaramiento de datos sensibles de los propietarios y la asignación estricta de permisos según el rol del empleado (veterinario, administrador, recepcionista).

**Integración y Centralización de Procesos (Interoperabilidad):** Uso de plataformas unificadas que centralizan la agenda, el historial clínico, el inventario y la facturación en un modelo relacional cohesivo, eliminando la duplicidad de información y las trampas estructurales en el diseño de datos.

**Analítica de Datos y Business Intelligence (BI):** Implementación de módulos que consumen los datos transaccionales para generar reportes en tiempo real. Esto permite a las clínicas analizar horas pico de atención, enfermedades más comunes por temporada y rotación de inventario para la toma de decisiones.

**Gestión Predictiva de Inventario y Automatización:** Automatización mediante triggers o procedimientos almacenados que descuentan insumos utilizados en tiempo real y generan alertas automáticas sobre productos próximos a vencer o con niveles críticos de stock.

**Telemedicina Veterinaria y Recordatorios Automatizados:** Integración de APIs de mensajería para el envío automático de notificaciones de citas y vacunas, junto con la capacidad de registrar consultas virtuales en el modelo de datos de la historia clínica.

## 3. Herramientas de Referencia en el Mercado

Como parte de la exploración inicial para el diseño del modelo relacional, se analizaron herramientas líderes en el mercado, evaluando cómo estructuran sus funcionalidades principales:

### ezyVet
Software de gestión integral basado en la nube, reconocido por su robustez en clínicas de gran tamaño y hospitales veterinarios.
*   **Funcionalidades Clave:** Gestión clínica detallada, automatización de flujos de trabajo financieros, portal para clientes y control avanzado de inventario.
*   **Análisis de Funcionalidades:** Destaca por su alto nivel de personalización y generación de reportes detallados. Desde la perspectiva de base de datos, maneja un modelo altamente relacional que vincula directamente los procedimientos clínicos con el módulo de facturación automáticamente. Sin embargo, su curva de aprendizaje es pronunciada y su costo es elevado para clínicas pequeñas.

### VETport
Aplicación orientada a brindar versatilidad mediante flujos de trabajo configurables, ideal para clínicas móviles o con múltiples sedes.
*   **Funcionalidades Clave:** Registros médicos electrónicos (EMR) personalizables, planes de bienestar, integraciones con laboratorios externos y comunicación omnicanal.
*   **Análisis de Funcionalidades:** Su principal ventaja es la flexibilidad de su historia clínica, lo que sugiere el uso de esquemas de bases de datos dinámicos (como el modelo Entidad-Atributo-Valor) para permitir a los veterinarios crear plantillas propias. Facilita la consolidación de datos entre diferentes sucursales.

### Provet Cloud
Sistema moderno de gestión veterinaria enfocado en la eficiencia operativa y la experiencia del usuario, fuertemente adoptado en Europa e ingresando al mercado latinoamericano.
*   **Funcionalidades Clave:** Pizarra digital para hospitalización, triaje automatizado, gestión de tareas del personal e integración de pagos.
*   **Análisis de Funcionalidades:** Sobresale en el manejo del estado transaccional de los pacientes (ej. seguimiento en tiempo real de una mascota en hospitalización). Esto requiere una base de datos optimizada para operaciones de lectura/escritura concurrentes.

### DVMAX Cloud
Orientado a simplificar las operaciones diarias hacia un modelo "sin papel" (paperless).
*   **Funcionalidades Clave:** Tableros de tratamiento interactivos, sincronización de historiales médicos, y macros de texto para agilizar el ingreso de datos.
*   **Análisis de Funcionalidades:** Se enfoca en la velocidad de captura de datos durante la consulta. Su arquitectura debe soportar la integridad referencial estricta para asegurar que ninguna prescripción o diagnóstico quede huérfano en el sistema al eliminar o modificar un registro temporal.

## 4. Referencias Bibliográficas

- Carastro, G. (2025). *Considerations for choosing veterinary practice management software*. American Animal Hospital Association.

- Congreso de Colombia. (2000). *Ley 576 de 2000: Código de Ética para el ejercicio profesional de la medicina veterinaria*.

- Congreso de Colombia. (2012). *Ley Estatutaria 1581 de 2012: Protección de datos personales*.

- ezyVet. (s. f.). *Features*. Recuperado de https://www.ezyvet.com/features

- Pereira Bengoa, V. (2018). *La historia clínica y el consentimiento informado en medicina veterinaria en Colombia*. Consejo Profesional de Medicina Veterinaria y de Zootecnia de Colombia.

- Polapragada, S. (2026). *AI applications in veterinary digital health: A systematic survey*. Frontiers in Veterinary Science.

- VETport. (s. f.). *Cloud veterinary practice management software*. Recuperado de https://www.vetport.com/
