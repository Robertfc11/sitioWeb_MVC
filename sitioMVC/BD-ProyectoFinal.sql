-- *****************************************************
--    Práctica Final Integradora 
--   "Prestamo de Items Académicos"
--    Materia: Desarrollo Avanzado de Sistemas
--    Profesor: Luis Alejandro Santana Valadez
--    
--    -- Nancy Hernández Sánchez         18200765
--    -- Frida Sarahi Meneses Rivera     18200772
--    -- Jesus Eduardo Rodarte Escamilla 18200202
-- ******************************************************

CREATE DATABASE PRACTICA_INT;

USE PRACTICA_INT;

CREATE TABLE ALUMNO
(
ALU_CVE_ALUMNO			INT 			NOT NULL	PRIMARY KEY,
ALU_NOMBRE				VARCHAR(20) 	NOT NULL,
ALU_APELLIDO_PATERNO	VARCHAR(20) 	NOT NULL,
ALU_APELLIDO_MATERNO	VARCHAR(20) 	NOT NULL,
ALU_RUTA				VARCHAR(200) 	NOT NULL,
ALU_CALLE				VARCHAR(50)		NOT NULL,
ALU_NUMERO				VARCHAR(50)		NOT NULL,
ALU_COLONIA				VARCHAR(50)		NOT NULL,
ALU_CIUDAD				VARCHAR(50)		NOT NULL,
ALU_ESTADO				VARCHAR(50)		NOT NULL,
ALU_CP					VARCHAR(10)		NOT NULL,
ALU_PAIS				VARCHAR(50)		NOT NULL,
ALU_TELEFONO			VARCHAR(15)		NULL,
ALU_CARRERA				VARCHAR(50)		NOT NULL
);


CREATE TABLE ITEM
(
ITE_CVE_ITEM			INT 			NOT NULL	PRIMARY KEY AUTO_INCREMENT,
ITE_NOMBRE				VARCHAR(30) 	NOT NULL,
ITE_CATEGORIA			VARCHAR(25)		NOT NULL,
ITE_DESCRIPCION			VARCHAR(150) 	NOT NULL,
ITE_ESTADO				VARCHAR(20) 	NOT NULL,
ITE_RUTA				VARCHAR(200) 	NOT NULL,
ALU_CVE_ALUMNO			INT				NOT NULL,

FOREIGN KEY (ALU_CVE_ALUMNO) REFERENCES ALUMNO(ALU_CVE_ALUMNO) 
);

CREATE TABLE OPERACION
(
OPE_CVE_OPERACION				INT 			NOT NULL	PRIMARY KEY AUTO_INCREMENT,
OPE_DESCRIPCION					VARCHAR(25)		NOT NULL,
OPE_LUGAR						VARCHAR(50)		NOT NULL,
OPE_FECHA						DATETIME		NOT NULL,
ALU_CVE_ALUMNO					INT				NOT NULL, -- RECEPTOR
ITE_CVE_ITEM					INT				NOT NULL,

FOREIGN KEY (ALU_CVE_ALUMNO) REFERENCES ALUMNO(ALU_CVE_ALUMNO),
FOREIGN KEY (ITE_CVE_ITEM) REFERENCES ITEM(ITE_CVE_ITEM)
);

-- INSERCIONES

INSERT INTO ALUMNO
(ALU_CVE_ALUMNO, ALU_NOMBRE, ALU_APELLIDO_PATERNO, ALU_APELLIDO_MATERNO, ALU_RUTA, ALU_CALLE, ALU_NUMERO,
ALU_COLONIA, ALU_CIUDAD, ALU_ESTADO, ALU_CP, ALU_PAIS, ALU_TELEFONO, ALU_CARRERA )
VALUES(18200765,'Nancy','Hernandez','Sanchez','imagenes/fotos/1.jpg', 'Cedro', '1110', 'Paseo de los Olivos', 'Zempoala',
'Hidalgo', '43845', 'Mexico', '+525573241947', 'ISC'),
(18200772,'Frida Sarahi','Meneses','Rivera','imagenes/fotos/2.jpg', 'Av. de Los Prismas', '203', 'Los Prismas', 'Pachuca de Soto',
'Hidalgo', '42083', 'Mexico', '+525576064307', 'ISC'),
(18200202,'Jesus Eduardo','Rodarte','Escamilla','imagenes/fotos/3.jpg', 'Rep. Nicaragua', '27', 'Centro', 'Atotonilco de Tula',
'Hidalgo', '42980', 'Mexico', '+525626675615', 'ISC'),
(17200303,'Wendolen','Mellado','Mendoza','imagenes/fotos/4.jpg', 'Cedro', '1110', 'Paseo de los Olivos', 'Zempoala',
'Hidalgo', '43845', 'Mexico', '+525573241947', 'ISC'),
(18200756,'Gabriel','Rodarte','Farfan','imagenes/fotos/5.jpg', 'Av. de Los Prismas', '203', 'Los Prismas', 'Pachuca de Soto',
'Hidalgo', '42083', 'Mexico', '+525576064307', 'ISC'),
(18200773,'Karla Michelle','Miranda','Juarez','imagenes/fotos/6.jpg', 'Rep. Nicaragua', '27', 'Centro', 'Atotonilco de Tula',
'Hidalgo', '42980', 'Mexico', '+525626675615', 'ISC'),
(16200669,'Luis Angel','Rodriguez','Larios','imagenes/fotos/7.jpg', '16 de Septiembre', '32', 'El Llano', 'Tula de Allende',
'Hidalgo', '42800', 'Mexico', '+527714443611', 'ISC');

INSERT INTO ITEM
(ITE_CVE_ITEM, ITE_NOMBRE, ITE_CATEGORIA, ITE_DESCRIPCION, ITE_ESTADO, ITE_RUTA, ALU_CVE_ALUMNO )
VALUES(null, 'Calculadora Científica', 'Electrónicos', 'Calculadora CASIO modelo GSF, seminueva.', 'Disponible', 'imagenes/items/1.jpg', 18200765),
(null,'Bata de laboratorio', 'Indumentaria', 'Bata blanca, talla mediana, manga larga. Planchada.', 'Disponible', 'imagenes/items/2.jpg', 17200303),
(null,'Cargador para laptop', 'Electrónicos', 'Cargador para Mac.', 'Disponible', 'imagenes/items/3.jpg', 18200773),
(null,'Baldor', 'Libros', 'Cuaderno de ejercicios algebráicos Baldor', 'Disponible', 'imagenes/items/4.jpg', 16200669),
(null,'Guitarra', 'Instrumentos musicales', 'Guitarra acústica marca Gibson', 'Disponible', 'imagenes/items/5.jpg', 16200669);


-- CREACIÓN DE PROCEDIMIENTOS ALMACENADOS

-- ------------------------------------------------
--  (1) PROCEDIMIENTO PARA ALTA DE ALUMNOS
--     1. NO SE PUEDE REGISTRAR UN ALUMNO EXACTAMENTE CON EL MISMO NOMBRE 
--     2. NO SE PUEDE REGISTRAR UN ALUMNO (ID) QUE EXISTA
--     0. NOMBRE DEL PROCEDIMIENTO: spInsAlumno

delimiter $$
CREATE PROCEDURE spInsAlumno
(
IN id int,
IN nombre varchar(20),
IN paterno varchar(20),
IN materno varchar(20),
IN ruta varchar(200),
IN calle varchar(50),
IN numero int,
IN colonia varchar(50),
IN ciudad varchar(50),
IN estado varchar(50),
IN cp varchar(10),
IN pais varchar(50),
IN telefono varchar(12),
IN carrera varchar(50)
)
BEGIN
	-- 1era validación
    IF NOT EXISTS(SELECT ALU_CVE_ALUMNO FROM ALUMNO WHERE ALU_NOMBRE = nombre AND ALU_APELLIDO_PATERNO = paterno AND ALU_APELLIDO_MATERNO = materno)
    -- 2da validación
    THEN
    IF NOT EXISTS(SELECT ALU_CVE_ALUMNO FROM ALUMNO WHERE ALU_CVE_ALUMNO = id)
    THEN
    -- Validaciones correctas, se procede a insertar
    INSERT INTO ALUMNO VALUES(id, nombre, paterno, materno, ruta, calle, numero, colonia, ciudad, estado, cp, pais, telefono, carrera);
    SELECT '0';

    ELSE
		SELECT '1';
    END IF;
    
    ELSE
		SELECT '-1';
    END IF;


END $$

-- ------------------------------------------------
--  (2) PROCEDIMIENTO PARA ALTA DE ITEMS
--     1. NO SE PUEDE REGISTRAR UN ITEM EXACTAMENTE CON EL MISMO NOMBRE Y ALUMNO
--     3. LA LLAVE FORANEA (ALU_CVE_ALUMNO) EXISTA EN SU TABLA CATALOGO
--     0. NOMBRE DEL PROCEDIMIENTO: spInsItem

delimiter $$
CREATE PROCEDURE spInsItem
(
IN nombre varchar(20),
IN categoria varchar(25),
IN descripcion varchar(150),
IN estado varchar(20),
IN ruta varchar(200),
IN alumno int
)
BEGIN
	-- 1era validación
    IF NOT EXISTS(SELECT ITE_CVE_ITEM FROM ITEM WHERE ITE_NOMBRE = nombre AND ALU_CVE_ALUMNO = alumno )
    -- 2da validación
		THEN
		IF EXISTS(SELECT ALU_CVE_ALUMNO FROM ALUMNO WHERE ALU_CVE_ALUMNO = alumno)
			THEN
    -- Validaciones correctas, se procede a insertar
			INSERT INTO ITEM VALUES(null, nombre, categoria, descripcion, estado, ruta, alumno);
			SELECT '0';
		ELSE
			SELECT '1';
		END IF;
    ELSE
		SELECT '-1';
    END IF;

END $$

-- ----------------------------------------------------------------------------------- 
-- (3) PROCEDIMIENTO PARA PRESTAMO DE ITEMS
-- 0. SOLO RECIBIR EL PARAMETRO (ITE_CVE_ITEM) NO SE NECESITAN MÁS PARAMETROS 
-- 1. VALIDAR QUE EL ITEM SI EXISTA, PARA PROCEDER A MODIFICAR 
-- spInsItemsPrestados

delimiter $$
CREATE PROCEDURE spInsItemsPrestados
(
IN lugar varchar(50),
IN fecha datetime,
IN receptor int,
IN item int
)
BEGIN
	-- 1era validación
    IF EXISTS(SELECT ITE_CVE_ITEM FROM ITEM WHERE ITE_CVE_ITEM = item )
		THEN
		-- Validaciones correctas, se procede a insertar
		IF(SELECT ITE_ESTADO = 'Disponible' FROM ITEM WHERE ITE_CVE_ITEM = item)
			THEN 
            IF EXISTS(SELECT ALU_CVE_ALUMNO FROM ALUMNO WHERE ALU_CVE_ALUMNO=receptor)
				THEN
				UPDATE ITEM SET ITE_DISPONIBILIDAD = 'No Disponible'   WHERE ITE_CVE_ITEM = item;
				INSERT INTO OPERACION VALUES (null, 'Prestamo', lugar, fecha, receptor, item);
				SELECT '0';
			ELSE
				SELECT '2';
			END IF;
		ELSE
			SELECT '1';
		END IF;
	ELSE
		SELECT '-1';
    END IF;
END $$

-- ----------------------------------------------------------------------------------- 
-- (3) PROCEDIMIENTO PARA DEVOLUCIÓN DE ITEMS
-- 0. SOLO RECIBIR EL PARAMETRO (ITE_CVE_ITEM) NO SE NECESITAN MÁS PARAMETROS 
-- 1. VALIDAR QUE EL ITEM SI EXISTA, PARA PROCEDER A MODIFICAR 
-- spDevItemsPrestados

delimiter $$
CREATE PROCEDURE spDevItemsPrestados
(
IN lugar varchar(50),
IN fecha datetime,
IN receptor int,
IN item int
)
BEGIN
	-- 1era validación
    IF EXISTS(SELECT ITE_CVE_ITEM FROM ITEM WHERE ITE_CVE_ITEM = item )
		THEN
		-- Validaciones correctas, se procede a insertar
		IF(SELECT ITE_ESTADO = 'No Disponible' FROM ITEM WHERE ITE_CVE_ITEM = item)
			THEN
            IF EXISTS(SELECT ALU_CVE_ALUMNO FROM ALUMNO WHERE ALU_CVE_ALUMNO=receptor)
				THEN
				UPDATE ITEM SET ITE_DISPONIBILIDAD = 'Disponible'   WHERE ITE_CVE_ITEM = item;
				INSERT INTO OPERACION VALUES (null, 'Devolución', lugar, fecha, receptor, item);
				SELECT '0';
			ELSE
				SELECT '2';
			END IF;
		ELSE
			SELECT '1';
		END IF;
	ELSE
		SELECT '-1';
    END IF;
END $$

-- CREACIÓN DE VISTAS
-- ------------------------------------------------
-- Items
DELIMITER ;
CREATE VIEW vwRptItems
AS
	SELECT I.ITE_CVE_ITEM AS Clave,
    I.ITE_NOMBRE AS Nombre,
    I.ITE_CATEGORIA AS Categoría,
    I.ITE_DESCRIPCION AS Descripción,
    I.ITE_ESTADO AS Disponibilidad,
    (SELECT CONCAT(A.ALU_NOMBRE, ' ', A.ALU_APELLIDO_PATERNO, ' ', A.ALU_APELLIDO_MATERNO)) AS Dueño, 
    I.ITE_RUTA AS Foto
	FROM  ITEM I, ALUMNO A
    WHERE I.ALU_CVE_ALUMNO = A.ALU_CVE_ALUMNO;

-- ------------------------------------------------
-- Alumnos

CREATE VIEW vwRptAlumnos
AS
	SELECT A.ALU_CVE_ALUMNO AS ID,
    (SELECT CONCAT(A.ALU_NOMBRE, ' ', A.ALU_APELLIDO_PATERNO, ' ', A.ALU_APELLIDO_MATERNO)) AS Nombre,
    A.ALU_RUTA AS Foto,
	(SELECT CONCAT(A.ALU_CALLE, ' ', A.ALU_NUMERO, ' ', A.ALU_COLONIA, ', ', A.ALU_CIUDAD, ', ', A.ALU_ESTADO,
    ', ', A.ALU_CP, ', ', A.ALU_PAIS))  AS Dirección,
	A.ALU_TELEFONO AS Teléfono,
	A.ALU_CARRERA AS Carrera
    FROM ALUMNO A;
SELECT * FROM VWRPTalumnos where carrera="isc";    
SELECT * FROM VWRPTITEMS;

call spInsAlumno(17200987,' Angel','Rodriguez','Perez','imagenes/fotos/7.jpg', '16 de noviembre', '32', 'El Llano', 'Tula de Allende',
'Hidalgo', '42800', 'Mexico', '527714443622', 'admin');
