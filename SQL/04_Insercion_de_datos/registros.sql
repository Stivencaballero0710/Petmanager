-- 1. VETERINARIA
INSERT INTO veterinaria VALUES
(1,'Vet Salud','Calle 10 #20-30'),
(2,'Mundo Animal','Carrera 15 #30-40'),
(3,'Pet Care','Calle 45 #12-18'),
(4,'Animal Center','Carrera 20 #15-25'),
(5,'Veterinaria San Lucas','Calle 25 #10-50'),
(6,'Huellitas','Carrera 8 #40-20'),
(7,'Vida Animal','Calle 60 #15-30'),
(8,'Pet House','Carrera 12 #22-10'),
(9,'Mascotas Felices','Calle 35 #18-40'),
(10,'Veterinaria Central','Carrera 25 #30-15');

-- 2. SUCURSAL
INSERT INTO sucursal VALUES
(1,1,'Calle 11 #20-31','3001111111'),
(2,2,'Carrera 16 #30-41','3002222222'),
(3,3,'Calle 46 #12-19','3003333333'),
(4,4,'Carrera 21 #15-26','3004444444'),
(5,5,'Calle 26 #10-51','3005555555'),
(6,6,'Carrera 9 #40-21','3006666666'),
(7,7,'Calle 61 #15-31','3007777777'),
(8,8,'Carrera 13 #22-11','3008888888'),
(9,9,'Calle 36 #18-41','3009999999'),
(10,10,'Carrera 26 #30-16','3010000000');

-- 3. INVENTARIO
INSERT INTO inventario VALUES
(1,1,100),
(2,2,150),
(3,3,200),
(4,4,120),
(5,5,180),
(6,6,90),
(7,7,250),
(8,8,130),
(9,9,160),
(10,10,220);

-- 4. ELEMENTO MEDICO
INSERT INTO elemento_medico VALUES
(1,1,'Medición de temperatura','GMD','Termómetro',20),
(2,2,'Escuchar sonidos cardíacos','Littmann','Estetoscopio',15),
(3,3,'Medición de peso','VetScale','Báscula',10),
(4,4,'Cirugía veterinaria','MedPro','Bisturí',30),
(5,5,'Visualización interna','OftalVet','Oftalmoscopio',8),
(6,6,'Administración de líquidos','MedVet','Equipo de venoclisis',25),
(7,7,'Examen clínico','VetTools','Otoscopio',12),
(8,8,'Inmovilización','AnimalCare','Camilla',5),
(9,9,'Diagnóstico','HealthVet','Tensiómetro',10),
(10,10,'Atención de urgencias','Medical','Ambú veterinario',7);

-- 5. MEDICAMENTO
INSERT INTO medicamento VALUES
(1,1,'Antibiótico','Tabletas','500 mg',50),
(2,2,'Analgésico','Jarabe','100 mg/5 ml',40),
(3,3,'Antiparasitario','Tabletas','250 mg',60),
(4,4,'Antiinflamatorio','Suspensión','50 mg/ml',35),
(5,5,'Antibiótico','Inyectable','1 g',25),
(6,6,'Antiséptico','Solución','10%',30),
(7,7,'Antiparasitario','Suspensión','100 mg/ml',45),
(8,8,'Analgésico','Tabletas','200 mg',55),
(9,9,'Antiinflamatorio','Inyectable','20 mg/ml',20),
(10,10,'Vitaminas','Jarabe','Multivitamínico',40);


-- 6. EMPLEADO
INSERT INTO empleado VALUES
(1,1,'Carlos','Martinez','3101111111','Calle 10 #15-20',3500000),
(2,2,'Laura','Gomez','3102222222','Carrera 20 #10-30',3800000),
(3,3,'Andres','Rodriguez','3103333333','Calle 30 #20-40',3600000),
(4,4,'Camila','Perez','3104444444','Carrera 15 #12-25',4000000),
(5,5,'Daniel','Torres','3105555555','Calle 40 #15-30',3700000),
(6,6,'Sofia','Ramirez','3106666666','Carrera 10 #20-15',3900000),
(7,7,'Juan','Castro','3107777777','Calle 25 #30-40',3500000),
(8,8,'Valentina','Diaz','3108888888','Carrera 18 #25-30',4100000),
(9,9,'Sebastian','Lopez','3109999999','Calle 50 #10-20',3800000),
(10,10,'Maria','Herrera','3110000000','Carrera 22 #15-30',4000000),
(11,1,'Ana','Morales','3111111111','Calle 12 #10-20',1800000),
(12,2,'Pedro','Sanchez','3112222222','Carrera 14 #20-30',1800000),
(13,3,'Luisa','Fernandez','3113333333','Calle 16 #30-40',1900000),
(14,4,'Miguel','Rojas','3114444444','Carrera 18 #10-20',1800000),
(15,5,'Paula','Mendoza','3115555555','Calle 20 #15-25',1850000),
(16,6,'Jorge','Vargas','3116666666','Carrera 25 #30-40',1800000),
(17,7,'Diana','Ortiz','3117777777','Calle 28 #20-30',1900000),
(18,8,'Felipe','Jimenez','3118888888','Carrera 30 #10-20',1850000),
(19,9,'Natalia','Silva','3119999999','Calle 35 #15-25',1800000),
(20,10,'David','Reyes','3120000000','Carrera 35 #20-30',1900000),
(21,1,'Oscar','Garcia','3121111111','Calle 40 #10-20',1600000),
(22,2,'Elena','Ruiz','3122222222','Carrera 40 #15-25',1650000),
(23,3,'Ricardo','Navarro','3123333333','Calle 45 #20-30',1600000),
(24,4,'Gabriela','Mejia','3124444444','Carrera 45 #10-20',1700000),
(25,5,'Martin','Cortes','3125555555','Calle 50 #15-25',1650000),
(26,6,'Carolina','Vega','3126666666','Carrera 50 #20-30',1600000),
(27,7,'Alejandro','Molina','3127777777','Calle 55 #10-20',1700000),
(28,8,'Isabella','Leon','3128888888','Carrera 55 #15-25',1650000),
(29,9,'Samuel','Pena','3129999999','Calle 60 #20-30',1600000),
(30,10,'Daniela','Acosta','3130000000','Carrera 60 #10-20',1700000);

-- 7. VETERINARIO
INSERT INTO veterinario VALUES
(1,'TP-1001','Medicina general'),
(2,'TP-1002','Cirugia veterinaria'),
(3,'TP-1003','Dermatologia'),
(4,'TP-1004','Cardiologia'),
(5,'TP-1005','Medicina interna'),
(6,'TP-1006','Oftalmologia'),
(7,'TP-1007','Neurologia'),
(8,'TP-1008','Traumatologia'),
(9,'TP-1009','Oncologia'),
(10,'TP-1010','Etologia');

-- 8. SECRETARIO
INSERT INTO secretario VALUES
(11,'Mañana'),
(12,'Tarde'),
(13,'Noche'),
(14,'Mañana'),
(15,'Tarde'),
(16,'Noche'),
(17,'Mañana'),
(18,'Tarde'),
(19,'Noche'),
(20,'Mañana');

-- 9. AUXILIAR
INSERT INTO auxiliar VALUES
(21,'Laboratorio'),
(22,'Cirugia'),
(23,'Hospitalizacion'),
(24,'Urgencias'),
(25,'Farmacia'),
(26,'Laboratorio'),
(27,'Cirugia'),
(28,'Hospitalizacion'),
(29,'Urgencias'),
(30,'Farmacia');

-- 10. CLIENTE
INSERT INTO cliente VALUES
(1,1,'Andres','Gomez','3201111111','Calle 10 #20-30','andres@gmail.com'),
(2,2,'Laura','Martinez','3202222222','Carrera 15 #30-40','laura@gmail.com'),
(3,3,'Carlos','Perez','3203333333','Calle 25 #10-20','carlos@gmail.com'),
(4,4,'Maria','Rodriguez','3204444444','Carrera 20 #15-25','maria@gmail.com'),
(5,5,'Juan','Lopez','3205555555','Calle 30 #20-30','juan@gmail.com'),
(6,6,'Sofia','Ramirez','3206666666','Carrera 10 #40-20','sofia@gmail.com'),
(7,7,'Daniel','Torres','3207777777','Calle 35 #15-30','daniel@gmail.com'),
(8,8,'Camila','Diaz','3208888888','Carrera 12 #22-10','camila@gmail.com'),
(9,9,'Pedro','Castro','3209999999','Calle 45 #18-40','pedro@gmail.com'),
(10,10,'Valentina','Herrera','3210000000','Carrera 25 #30-15','valentina@gmail.com');

-- 11. FACTURA
INSERT INTO factura VALUES
(1,1,1001,85000),
(2,2,1002,120000),
(3,3,1003,65000),
(4,4,1004,150000),
(5,5,1005,95000),
(6,6,1006,75000),
(7,7,1007,180000),
(8,8,1008,110000),
(9,9,1009,135000),
(10,10,1010,90000);

-- 12. ANIMAL
INSERT INTO animal VALUES
(1,1,'Max','Labrador','Macho'),
(2,2,'Luna','Persa','Hembra'),
(3,3,'Rocky','Bulldog','Macho'),
(4,4,'Mia','Siamés','Hembra'),
(5,5,'Toby','Golden Retriever','Macho'),
(6,6,'Nala','Criollo','Hembra'),
(7,7,'Bruno','Pastor Aleman','Macho'),
(8,8,'Coco','Poodle','Macho'),
(9,9,'Lola','Beagle','Hembra'),
(10,10,'Simba','Mestizo','Macho');


-- 13. HISTORIAL CLINICO
INSERT INTO historial_clinico VALUES
(1,1,5001,'2026-01-10'),
(2,2,5002,'2026-01-12'),
(3,3,5003,'2026-01-15'),
(4,4,5004,'2026-01-18'),
(5,5,5005,'2026-01-20'),
(6,6,5006,'2026-01-22'),
(7,7,5007,'2026-01-25'),
(8,8,5008,'2026-01-28'),
(9,9,5009,'2026-02-01'),
(10,10,5010,'2026-02-05');

-- 14. REGISTRO CLINICO
INSERT INTO registro_clinico VALUES
(1,1,'2026-01-11','Consulta general y examen fisico'),
(2,2,'2026-01-13','Evaluacion del estado de salud'),
(3,3,'2026-01-16','Revision de sintomas digestivos'),
(4,4,'2026-01-19','Examen clinico general'),
(5,5,'2026-01-21','Evaluacion de peso y alimentacion'),
(6,6,'2026-01-23','Revision dermatologica'),
(7,7,'2026-01-26','Evaluacion locomotora'),
(8,8,'2026-01-29','Revision oftalmologica'),
(9,9,'2026-02-02','Control de salud general'),
(10,10,'2026-02-06','Evaluacion preventiva'),

(11,1,'2026-02-10','Vacunacion anual'),
(12,2,'2026-02-11','Aplicacion de vacuna'),
(13,3,'2026-02-12','Vacunacion preventiva'),
(14,4,'2026-02-13','Refuerzo de vacunacion'),
(15,5,'2026-02-14','Aplicacion de vacuna'),
(16,6,'2026-02-15','Vacunacion anual'),
(17,7,'2026-02-16','Refuerzo vacunal'),
(18,8,'2026-02-17','Vacunacion preventiva'),
(19,9,'2026-02-18','Aplicacion de vacuna'),
(20,10,'2026-02-19','Refuerzo de vacunacion'),

(21,1,'2026-03-01','Tratamiento por infeccion'),
(22,2,'2026-03-02','Tratamiento dermatologico'),
(23,3,'2026-03-03','Tratamiento digestivo'),
(24,4,'2026-03-04','Tratamiento antiinflamatorio'),
(25,5,'2026-03-05','Tratamiento preventivo'),
(26,6,'2026-03-06','Tratamiento por alergia'),
(27,7,'2026-03-07','Tratamiento muscular'),
(28,8,'2026-03-08','Tratamiento oftalmologico'),
(29,9,'2026-03-09','Tratamiento antiparasitario'),
(30,10,'2026-03-10','Tratamiento general'),

(31,1,'2026-04-01','Hospitalizacion por observacion'),
(32,2,'2026-04-02','Hospitalizacion por procedimiento'),
(33,3,'2026-04-03','Hospitalizacion por enfermedad'),
(34,4,'2026-04-04','Hospitalizacion para recuperacion'),
(35,5,'2026-04-05','Hospitalizacion preventiva'),
(36,6,'2026-04-06','Hospitalizacion por complicacion'),
(37,7,'2026-04-07','Hospitalizacion por tratamiento'),
(38,8,'2026-04-08','Hospitalizacion para vigilancia'),
(39,9,'2026-04-09','Hospitalizacion por observacion'),
(40,10,'2026-04-10','Hospitalizacion para recuperacion');


-- 15. CITA
INSERT INTO cita VALUES
(1,'Consulta general','2026-01-11 08:00:00'),
(2,'Consulta de control','2026-01-13 09:00:00'),
(3,'Consulta digestiva','2026-01-16 10:00:00'),
(4,'Consulta general','2026-01-19 11:00:00'),
(5,'Control nutricional','2026-01-21 08:30:00'),
(6,'Consulta dermatologica','2026-01-23 09:30:00'),
(7,'Consulta traumatologica','2026-01-26 10:30:00'),
(8,'Consulta oftalmologica','2026-01-29 11:30:00'),
(9,'Consulta preventiva','2026-02-02 14:00:00'),
(10,'Control general','2026-02-06 15:00:00');

-- 16. VACUNACION
INSERT INTO vacunacion VALUES
(11,'Antirrabica','1 dosis'),
(12,'Triple felina','1 dosis'),
(13,'Polivalente','1 dosis'),
(14,'Antirrabica','Refuerzo anual'),
(15,'Parvovirus','1 dosis'),
(16,'Triple felina','Refuerzo anual'),
(17,'Polivalente','1 dosis'),
(18,'Antirrabica','1 dosis'),
(19,'Parvovirus','Refuerzo'),
(20,'Triple felina','1 dosis');

-- 17. TRATAMIENTO
INSERT INTO tratamiento VALUES
(21,'Antibiotico oral','Administrar cada 12 horas'),
(22,'Crema dermatologica','Aplicar dos veces al dia'),
(23,'Protector gastrico','Administrar antes de comer'),
(24,'Antiinflamatorio','Administrar cada 24 horas'),
(25,'Antiparasitario','Administrar dosis indicada'),
(26,'Antihistaminico','Administrar cada 12 horas'),
(27,'Analgesico','Administrar cada 24 horas'),
(28,'Gotas oftalmicas','Aplicar tres veces al dia'),
(29,'Desparasitante','Administrar dosis unica'),
(30,'Complejo vitaminico','Administrar diariamente');

-- 18. HOSPITALIZACION
INSERT INTO hospitalizacion VALUES
(31,2,'Sala A'),
(32,3,'Sala B'),
(33,4,'Sala C'),
(34,2,'Sala A'),
(35,1,'Sala B'),
(36,5,'Sala C'),
(37,3,'Sala A'),
(38,2,'Sala B'),
(39,4,'Sala C'),
(40,3,'Sala A');