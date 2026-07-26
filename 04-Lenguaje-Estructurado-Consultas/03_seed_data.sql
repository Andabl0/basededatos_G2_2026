-- 03_seed_data.sql
-- Plantilla inicial. Debido al tamaño del conjunto de datos completo,
-- este archivo se generará por bloques.

USE comercial_db;
GO

/*==========================================================
ESTADOS
==========================================================*/
INSERT INTO estados(nombre)
VALUES
('Aguascalientes'),
('Baja California'),
('Baja California Sur'),
('Campeche'),
('Chiapas'),
('Chihuahua'),
('Ciudad de México'),
('Coahuila'),
('Colima'),
('Durango'),
('Guanajuato'),
('Guerrero'),
('Hidalgo'),
('Jalisco'),
('Estado de México'),
('Michoacán'),
('Morelos'),
('Nayarit'),
('Nuevo León'),
('Oaxaca'),
('Puebla'),
('Querétaro'),
('Quintana Roo'),
('San Luis Potosí'),
('Sinaloa'),
('Sonora'),
('Tabasco'),
('Tamaulipas'),
('Tlaxcala'),
('Veracruz'),
('Yucatán'),
('Zacatecas');
GO

-- Continúa con ciudades, departamentos, categorías, proveedores,
-- clientes, empleados, productos, ventas y detalle_ventas.
