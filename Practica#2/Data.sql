USE `narvaez-flores`;

INSERT INTO clientes (rut, nombre_completo, telefono, email) VALUES
('11111111-1', 'Ana Torres', '9991112233', 'ana.torres@mail.com'),
('22222222-2', 'Luis Gómez', '9992223344', 'luis.gomez@mail.com'),
('33333333-3', 'Marta Díaz', '9993334455', 'marta.diaz@mail.com'),
('44444444-4', 'Carlos Ruiz', '9994445566', 'carlos.ruiz@mail.com'),
('55555555-5', 'Sofía León', '9995556677', 'sofia.leon@mail.com');

INSERT INTO mascotas (nombre, especie, raza, fecha_nacimiento, id_cliente) VALUES
('Max', 'Perro', 'Labrador', '2021-03-15', 1),
('Luna', 'Gato', 'Siamés', '2020-07-22', 2),
('Rocky', 'Perro', 'Bulldog', '2019-11-05', 3),
('Michi', 'Gato', 'Común Europeo', '2022-01-10', 4),
('Toby', 'Perro', 'Poodle', '2021-09-30', 5);

INSERT INTO veterinarios (documento, nombre_completo, especialidad, telefono) VALUES
('V001', 'Dra. Paola Herrera', 'Medicina General', '9991230001'),
('V002', 'Dr. Iván Castro', 'Cirugía', '9991230002'),
('V003', 'Dra. Renata Soto', 'Dermatología', '9991230003'),
('V004', 'Dr. Julio Méndez', 'Odontología', '9991230004'),
('V005', 'Dra. Karla Vargas', 'Medicina Interna', '9991230005');

INSERT INTO medicamentos (codigo, nombre_comercial, laboratorio, precio_unitario) VALUES
('MED001', 'Amoxicilina 250mg', 'PharmaVet', 85.50),
('MED002', 'Meloxicam', 'LaboVet', 120.00),
('MED003', 'Ivermectina', 'AgroPharm', 60.00),
('MED004', 'Cefalexina', 'VetLabs', 95.75),
('MED005', 'Prednisona', 'MediPet', 70.25);

INSERT INTO atenciones (fecha_hora, diagnostico, costo, id_mascota, id_veterinario) VALUES
('2026-09-01 09:30:00', 'Infección de oído', 350.00, 1, 1),
('2026-09-02 11:00:00', 'Revisión post-cirugía', 500.00, 2, 2),
('2026-09-03 14:15:00', 'Dermatitis alérgica', 400.00, 3, 3),
('2026-09-04 16:45:00', 'Limpieza dental', 450.00, 4, 4),
('2026-09-05 10:00:00', 'Chequeo general', 300.00, 5, 5);

INSERT INTO prescripciones (id_atencion, id_medicamento, cantidad, indicaciones) VALUES
(1, 1, 10, '1 pastilla cada 8 horas por 5 días'),
(2, 2, 6, '1 pastilla cada 12 horas por 3 días'),
(3, 5, 8, '1 pastilla cada 24 horas por 8 días'),
(4, 4, 12, '1 pastilla cada 8 horas por 4 días'),
(5, 3, 1, 'Dosis única');
