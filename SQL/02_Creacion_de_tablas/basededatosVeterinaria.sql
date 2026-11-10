USE petmanager;

-- 1. VETERINARIA
CREATE TABLE veterinaria(
id_veterinaria INT AUTO_INCREMENT,
nombre_vet VARCHAR(100) NOT NULL,
direccion_vet VARCHAR(150) NOT NULL,
PRIMARY KEY (id_veterinaria)
);
-- 2. SUCURSAL (VETERINARIA 1:N SUCURSAL)
CREATE TABLE sucursal(
id_sucursal INT AUTO_INCREMENT,
id_veterinaria INT NOT NULL,
direccion_suc VARCHAR(150) NOT NULL,
telefono_suc VARCHAR(20) NOT NULL,
PRIMARY KEY (id_sucursal),
FOREIGN KEY (id_veterinaria) REFERENCES veterinaria(id_veterinaria)
);
-- 3. INVENTARIO (SUCURSAL 1:1 INVENTARIO)
CREATE TABLE inventario(
id_inventario INT AUTO_INCREMENT,
id_sucursal INT NOT NULL,
numero_stock INT NOT NULL,
PRIMARY KEY (id_inventario),
UNIQUE (id_sucursal),
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
);
-- 4. ELEMENTO_MEDICO (INVENTARIO 1:N ELEMENTO_MEDICO)
CREATE TABLE elemento_medico(
id_elemento INT AUTO_INCREMENT,
id_inventario INT NOT NULL,
funcion VARCHAR(150) NOT NULL,
marca VARCHAR(80) NOT NULL,
tipo_elemento VARCHAR(80) NOT NULL,
cantidad INT NOT NULL,
PRIMARY KEY (id_elemento),
FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario)
);
-- 5. MEDICAMENTO (INVENTARIO 1:N MEDICAMENTO)
CREATE TABLE medicamento(
id_medicamento INT AUTO_INCREMENT,
id_inventario INT NOT NULL,
tipo_medicamento VARCHAR(80) NOT NULL,
presentacion VARCHAR(80) NOT NULL,
dosis VARCHAR(80) NOT NULL,
cantidad INT NOT NULL,
PRIMARY KEY (id_medicamento),
FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario)
);
-- 6. EMPLEADO (VETERINARIA 1:N EMPLEADO)
CREATE TABLE empleado(
id_empleado INT AUTO_INCREMENT,
id_veterinaria INT NOT NULL,
nombre_emp VARCHAR(80) NOT NULL,
apellido_emp VARCHAR(80) NOT NULL,
telefono_emp VARCHAR(20) NOT NULL,
direccion_emp VARCHAR(150) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id_empleado),
FOREIGN KEY (id_veterinaria) REFERENCES veterinaria(id_veterinaria)
);
-- 7. VETERINARIO (especializacion de EMPLEADO)
CREATE TABLE veterinario(
id_empleado INT,
registro_profesional VARCHAR(40) NOT NULL,
especialidad VARCHAR(80) NOT NULL,
PRIMARY KEY (id_empleado),
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
-- 8. SECRETARIO (especializacion de EMPLEADO)
CREATE TABLE secretario(
id_empleado INT,
turno VARCHAR(30) NOT NULL,
PRIMARY KEY (id_empleado),
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
-- 9. AUXILIAR (especializacion de EMPLEADO)
CREATE TABLE auxiliar(
id_empleado INT,
area_apoyo VARCHAR(80) NOT NULL,
PRIMARY KEY (id_empleado),
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
-- 10. CLIENTE (VETERINARIA 1:N CLIENTE)
CREATE TABLE cliente(
id_cliente INT AUTO_INCREMENT,
id_veterinaria INT NOT NULL,
nombre_cli VARCHAR(80) NOT NULL,
apellido_cli VARCHAR(80) NOT NULL,
telefono_cli VARCHAR(20) NOT NULL,
direccion_cli VARCHAR(150) NOT NULL,
correo VARCHAR(120) NOT NULL,
PRIMARY KEY (id_cliente),
FOREIGN KEY (id_veterinaria) REFERENCES veterinaria(id_veterinaria)
);
-- 11. FACTURA (CLIENTE 1:N FACTURA)

CREATE TABLE factura(

id_factura INT AUTO_INCREMENT,

id_cliente INT NOT NULL,

numero_factura INT NOT NULL,

monto DECIMAL(12,2) NOT NULL,

PRIMARY KEY(id_factura),

UNIQUE(numero_factura),

FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)

);

-- 12. ANIMAL

CREATE TABLE animal(

id_animal INT AUTO_INCREMENT,

id_cliente INT NOT NULL,

nombre_animal VARCHAR(60) NOT NULL,

raza VARCHAR(40) NOT NULL,

sexo VARCHAR(10) NOT NULL,

PRIMARY KEY (id_animal),

FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)

);

-- 13. HISTORIAL CLINICO

CREATE TABLE historial_clinico(

id_historial INT AUTO_INCREMENT,

id_animal INT NOT NULL,

numero_registro INT NOT NULL,

fecha_apertura DATE NOT NULL,

UNIQUE(id_animal),

PRIMARY KEY (id_historial),

FOREIGN KEY (id_animal) REFERENCES animal(id_animal)

);

-- 14. REGISTRO CLINICO

CREATE TABLE registro_clinico(

id_registro INT AUTO_INCREMENT,

id_historial INT NOT NULL,

fecha_registro DATE NOT NULL,

observacion TEXT NOT NULL,
PRIMARY KEY (id_registro),

FOREIGN KEY (id_historial) REFERENCES historial_clinico(id_historial)

);

-- 15. CITA

CREATE TABLE cita(

id_registro INT NOT NULL,

tipo_cita VARCHAR(60) NOT NULL,

hora TIMESTAMP NOT NULL,

PRIMARY KEY (id_registro),

FOREIGN KEY (id_registro) REFERENCES registro_clinico(id_registro)

);

-- 16. VACUNACION

CREATE TABLE vacunacion(

id_registro INT NOT NULL,

tipo_vacuna VARCHAR(50) NOT NULL,

dosis VARCHAR(60) NOT NULL,

PRIMARY KEY (id_registro),

FOREIGN KEY (id_registro) REFERENCES registro_clinico(id_registro)

);

-- 17. TRATAMIENTO

CREATE TABLE tratamiento(

id_registro INT NOT NULL,

receta_medica VARCHAR(60) NOT NULL,

indicaciones VARCHAR(70) NOT NULL,

PRIMARY KEY (id_registro),

FOREIGN KEY (id_registro) REFERENCES registro_clinico(id_registro)

);

-- 18. HOSPITALIZACION

CREATE TABLE hospitalizacion(

id_registro INT NOT NULL,

duracion INT NOT NULL,

sala VARCHAR(50) NOT NULL,

PRIMARY KEY (id_registro),

FOREIGN KEY (id_registro) REFERENCES registro_clinico(id_registro)

);
