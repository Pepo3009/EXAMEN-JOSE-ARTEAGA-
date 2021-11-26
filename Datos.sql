--Veterinaria
insert into veterinaria values 
('0001', 'Animalito’s', '0996969734', '37 de Agto Vía Crucita');

--Tipos
insert into tipo values 
('0001', 'Veterinario'),
('0002', 'Secretaria'),
('0003', 'Personal de limpieza');

--Especialidad
insert into especialidad values
('0001', 'Cirugía'),
('0002', 'Fisioterapia'),
('0003', 'Rehabilitación'),
('0004', 'Secretariado Bilingüe');

--Personal
insert into personal values 
('0001', '0001', '0001', '0001', '1354622386', 'Sergio', 'Marcial', '05-6858556', '0944593786', 'Av. 23 y Calle 12 Esq', 'sergio_marcial@gmail.com'),
('0002', '0002', '0001', '0001', '1355579848', 'Rosalina', 'Cortes', '05-5496249', '1354455393', 'Malecón y Calle 23 P.O', 'rosalina_cortes@gmail.com'),
('0003', '0002', '0001', '0001', '1357692235', 'Evaristo', 'Medina', '05-4737528', '1355957559', 'Av. Flavio Reyes', 'evaristo_medina@gmail.com'),
('0004', '0003', '0001', '0001', '1355727226', 'Rosa', 'Polo', '05-4355732', '1352996588', 'Av 3era y Calle 42', 'rosa_polo@gmail.com'),
('0005', '0004', '0002', '0001', '1356394869', 'Adelaida', 'Valle', '05-7477229', '1354356253', 'Av. 18 E/ Calles 12 y 34', 'adelaida_valle@gmail.com'),
('0006', null, '0003', '0001', '1359555487', 'Vidal', 'Gelabert', '05-8354567', '1357428436', 'Av. 18 E/ Calles 12 y 34', 'vidal_gelabert@gmail.com'),
('0007', null, '0003', '0001', '1353679675', 'Hugo', 'Tejera', '05-6575526', '1354367652', 'Clínica Manta 3er Piso Ofic 3014', 'hugo_tejera@gmail.com');

--Medicamento
insert into medicamento values 
('0001', 'Agromycin® 11', 'Antibiótico de amplio espectro', 7.58),
('0002', 'Aminoplex® Light', 'Electrolitos, aminoácidos, vitaminas', 13.64),
('0003', 'ABZ® 20%', 'Antiparasitario de amplio espectro y alta concentración', 2.63),
('0004', 'Boldemax® A.P.', 'Anabólico de acción prolongada', 8.77),
('0005', 'Fenbuta® 200', 'Antiinflamatorio, antipirético, analgésico', 13.36),
('0006', 'Oxyto-Synt® 10', 'Oxitócico, uterotónico y galactóforo', 5.06),
('0007', 'Cani-Tabs® Healthy Bones Ca+P', 'Huesos y dientes sanos', 40.00),
('0008', 'Alcanforvet® Alcanforado Plus', 'Estimulante respiratorio y cardiovascular', 9.62);

--Tratamiento
insert into tratamiento values
('0001', 'Consulta Médico Veterinaria', 12.30),
('0002', 'Vacuna Óctuple/Séxtuple Canina', 9.84),
('0003', 'Vacuna Kc', 13.53),
('0004', 'Vacuna Triple Felina', 11.69),
('0005', 'Vacuna Leucemia Viral Felina', 11.69),
('0006', 'Examen Leucemia /Inmunodeficiencia Viral Felina', 27.05),
('0007', 'Vacuna Antirrábica', 9.84),
('0008', 'Certificado de Salud Simple para Viaje dentro del país', 27.37);

--Clientes
insert into cliente values
('0001', '1356568834', 'Bernardo', 'Reyes', '0928883277', 'Vía a Manta Montecristi Km 11.5', 'bernardo_reyes@gmail.com', 0),
('0002', '1354793457', 'Dorotea', 'Pavón', '0938739575', 'Av F Reyes s/n y Cl 77', 'dorotea_pavon@gmail.com', 0),
('0003', '1355763945', 'Severo', 'Sevillano', '0924343734', 'Av 24 de Mayo y Calle 48', 'severo_sevillano@gmail.com', 0),
('0004', '1356864976', 'Ariadna', 'Tirado', '0924227799', 'Av. 4 de Noviembre y Calle 143', 'ariadna_tirado@gmail.com', 0),
('0005', '1352232877', 'Martín', 'Cañas', '0927827834', 'Av 106 210 Cl 1052', 'martin_cañas@gmail.com', 0),
('0006', '1352623492', 'Yésica', 'Cardona', '0989972394', 'Cdla Leonidas Proaño', 'yesica_cardona@gmail.com', 0),
('0007', '1352322299', 'Donato', 'Mesa', '0997329755', '44ma Oeste 120 y San Jorge', 'donato_mesa@gmail.com', 0),
('0008', '1356437893', 'Hilda', 'Molina', '0997923598', 'Av 105 y Calle 103 (Manta - Tarqui)', 'hilda_molina@gmail.com', 0),
('0009', '1357375659', 'Seve', 'Alarcón', '0957478335', 'Av 4 de Noviembre Km 4.5 y La Y', 'seve_alarcon@gmail.com', 0),
('0010', '1352985522', 'Manu', 'Chaves', '0937579782', 'Av. Flavio Reyes y Calle 38', 'manu_chaves@gmail.com', 0),
('0011', '1353356273', 'Albino', 'Blanes', '0992769533', 'Av. 7 y Calle 14 Esq', 'albino_blanes@gmail.com', 0),
('0012', '1358589746', 'Alexandra', 'Ramirez', '0974354893', 'Calle 2da #2755 y Calle 27', 'alexandra_ramirez@gmail.com', 0),
('0013', '1352445278', 'Calvo', 'Bautista', '0973995998', 'Flavio Reyes E/ Calle 18 y 67', 'calvo_bautista@gmail.com', 0),
('0014', '1355377864', 'Dionisia', 'Pina', '0998749855', 'Av Flavio Reyes y Circunvalación Esq', 'dionisia_pina@gmail.com', 0),
('0015', '1355753221', 'Carlos', 'Aguado', '0975436774', 'Av. 2 E/CA 12 P.27', 'carlos_aguado@gmail.com', 0);

--Mascota
insert into mascota values
('0001', '0001', 'Babsy', 'Can', 'Beagle', 'Café', '10 kg', '05/01/2018'),
('0002', '0002', 'Babas', 'Can', 'Bóxer', 'Leonado', '25 kg', '25/12/2020'),
('0003', '0003', 'Bigotes', 'Gato', 'Persa', 'Negro', '4 kg', '16/08/2017'),
('0004', '0004', 'Fofito', 'Gato', 'Bengalí', 'Marfil', '3.9 kg', '24/04/2021'),
('0005', '0005', 'Pelos', 'Can', 'Cavalier', 'Tricolor', '5.2 kg', '23/12/2020'),
('0006', '0006', 'Otto', 'Can', 'Bulldog', 'Blanco', '18 kg', '15/02/2019'),
('0007', '0007', 'Mr. Dog', 'Can', 'Saluki', '18 kg', 'aaa', '26/07/2020'),
('0008', '0008', 'Glotón', 'Can', 'Aidi', 'Negro', '25 kg', '26/11/2020'),
('0009', '0009', 'Pompón', 'Can', 'Dingo', 'Rojizo', '10 kg', '30/03/2019'),
('0010', '0010', 'Sheldon', 'Can', 'Silky', 'Negro y canela', '5 kg', '25/06/2021'),
('0011', '0011', 'Surimi', 'Can', 'Basenji', 'Tricolor', '12 kg', '21/04/2021'),
('0012', '0012', 'Torpedo', 'Gato', 'Siamés', 'Marrón claro', '4 kg', '13/05/2019'),
('0013', '0013', 'Yoda', 'Can', 'Tenterfield', 'Tricolor', '14 kg', '01/10/2018'),
('0014', '0014', 'Pipiola', 'Gato', 'Ragdoll', 'Seal-point', '8 kg', '08/09/2020'),
('0015', '0015', 'Pelusa', 'Gato', 'Birmano', 'Chocolate', '5 kg', '10/10/2020');

--Sala
insert into sala values
('0001', '0001', '0001', 'Quirófano'),
('0002', '0001', '0002', 'Recepción'),
('0003', '0001', '0003', 'Recuperación'),
('0004', '0001', '0004', 'Área de observación');

--Cita
insert into cita values
('0001', '0005', '0001', '0002', '0001', '01/09/2021', '02/09/2021', '10:00:00', 'Atendida'), --Fisioterapia
('0002', '0005', '0002', '0001', '0002', '05/09/2021', '07/09/2021', '15:00:00', 'Atendida'), --Cirugía
('0003', '0005', '0003', '0002', '0003', '15/09/2021', '17/09/2021', '13:00:00', 'Atendida'), --Fisioterapia
('0004', '0005', '0004', '0001', '0004', '20/09/2021', '22/09/2021', '10:00:00', 'Atendida'), --Cirugía
('0005', '0005', '0005', '0003', '0005', '22/09/2021', '24/09/2021', '09:00:00', 'Atendida'), --Rehabilitación
('0006', '0005', '0006', '0002', '0006', '06/10/2021', '08/10/2021', '13:00:00', 'Atendida'), --Fisioterapia
('0007', '0005', '0007', '0003', '0007', '12/10/2021', '14/10/2021', '10:00:00', 'Atendida'), --Rehabilitación
('0008', '0005', '0008', '0002', '0008', '20/10/2021', '22/10/2021', '11:00:00', 'Atendida'), --Fisioterapia
('0009', '0005', '0009', '0001', '0009', '20/10/2021', '22/10/2021', '14:00:00', 'Atendida'), --Cirugía
('0010', '0005', '0010', '0002', '0010', '24/10/2021', '26/10/2021', '16:00:00', 'Atendida'), --Fisioterapia
('0011', '0005', '0011', '0001', '0011', '03/11/2021', '05/11/2021', '14:00:00', 'Atendida'), --Cirugía
('0012', '0005', '0012', '0002', '0012', '09/11/2021', '11/11/2021', '09:00:00', 'Atendida'), --Fisioterapia
('0013', '0005', '0013', '0002', '0013', '13/11/2021', '15/11/2021', '11:00:00', 'Atendida'), --Fisioterapia
('0014', '0005', '0014', '0003', '0014', '24/11/2021', '26/11/2021', '13:00:00', 'Pendiente'), --Rehabilitación
('0015', '0005', '0015', '0002', '0015', '24/11/2021', '26/11/2021', '14:00:00', 'Pendiente'); --Fisioterapia

--Visita
insert into visita values
('0001', '0001', '02/09/2021', '00:35:00'),
('0002', '0001', '07/09/2021', '00:30:00'),
('0003', '0001', '17/09/2021', '00:40:00'),
('0004', '0001', '22/09/2021', '00:35:00'),
('0005', '0001', '24/09/2021', '00:40:00'),
('0006', '0001', '08/10/2021', '00:35:00'),
('0007', '0001', '14/10/2021', '00:40:00'),
('0008', '0001', '22/10/2021', '00:40:00'),
('0009', '0001', '22/10/2021', '00:40:00'),
('0010', '0001', '26/10/2021', '00:30:00'),
('0011', '0001', '05/11/2021', '00:30:00'),
('0012', '0001', '11/11/2021', '00:35:00'),
('0013', '0001', '15/11/2021', '00:30:00');

--Sala_Mascota
insert into sala_mascota values
('0003', '0001', '02/09/2021', null), --Recuperación
('0001', '0002', '07/09/2021', null), --Quirofano
('0003', '0003', '17/09/2021', null), --Recuperación
('0001', '0004', '22/09/2021', null), --Quirófano
('0004', '0005', '24/09/2021', null), --Área de observación
('0003', '0006', '08/10/2021', null), --Recuperación
('0004', '0007', '14/10/2021', null), --Área de observación
('0003', '0008', '22/10/2021', null), --Recuperación
('0001', '0009', '22/10/2021', null), --Quirófano
('0003', '0010', '26/10/2021', null), --Recuperación
('0001', '0011', '05/11/2021', null), --Quirófano
('0003', '0012', '11/11/2021', null), --Recuperación
('0003', '0013', '15/11/2021', null); --Recuperación

--Tratamiento_Mascota
insert into tratamiento_mascota values
('0008', '0001', '02/09/2021'), --Can
('0001', '0002', '07/09/2021'), --Can
('0004', '0003', '17/09/2021'), --Gato
('0001', '0004', '22/09/2021'), --Gato
('0007', '0005', '24/09/2021'), --Can
('0002', '0006', '08/10/2021'), --Can
('0007', '0007', '14/10/2021'), --Can
('0002', '0008', '22/10/2021'), --Can
('0001', '0009', '22/10/2021'), --Can
('0008', '0010', '26/10/2021'), --Can
('0001', '0011', '05/11/2021'), --Gato
('0003', '0012', '11/11/2021'), --Can
('0008', '0013', '15/11/2021'); --Can

--Medicamento_Mascota
insert into medicamento_mascota values
('0001', '0001', '0002', '02/09/2021'), --Can
('0007', '0002', '0001', '07/09/2021'), --Can
('0008', '0003', '0002', '17/09/2021'), --Gato
('0005', '0004', '0001', '22/09/2021'), --Gato
('0002', '0005', '0003', '24/09/2021'), --Can
('0004', '0006', '0002', '08/10/2021'), --Can
('0002', '0007', '0003', '14/10/2021'), --Can
('0001', '0008', '0002', '22/10/2021'), --Can
('0006', '0009', '0001', '22/10/2021'), --Can
('0006', '0010', '0002', '26/10/2021'), --Can
('0008', '0011', '0001', '05/11/2021'), --Gato
('0007', '0012', '0002', '11/11/2021'), --Can
('0001', '0013', '0003', '15/11/2021'); --Can