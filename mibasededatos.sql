CREATE DATABASE TDC;

CREATE TABLE Empleados (
    EMPLOYEE_ID INT PRIMARY KEY,
    FULL_NAME NVARCHAR(255),
    GENDER CHAR(1),
    CATEGORY NVARCHAR(50),
    EMPLOYMENT_DATE DATE,
    BIRTH_DATE DATE,
    EDUCATION_LEVEL NVARCHAR(50)
)

CREATE TABLE stock
(
    PRODUCT_ID INT, -- ID del producto
    [DATE] DATE, -- Fecha (DATE es el tipo de dato para fechas)
    VARIATION INT -- Variación de stock (ajusta el tipo de dato según tus necesidades)
);


CREATE TABLE Vacaciones (
    HOLIDAT_ID INT PRIMARY KEY,
    HOLIDAY NVARCHAR(255),
	[DATE] DATE

);

CREATE TABLE Clientes (
    CUSTOMER_ID INT PRIMARY KEY,
    FULL_NAME NVARCHAR(255),
    BIRTH_DATE DATE,
	TYPE NVARCHAR(255)
);



CREATE TABLE Productos (
    PRODUCT_ID INT PRIMARY KEY,
    DETAIL NVARCHAR(255),
    UNIT NVARCHAR(255),
	CONTANER_CAPACITY NVARCHAR(255)
);



-- Crear la tabla "history_sales"
CREATE TABLE History_sales
(
    ID INT PRIMARY KEY IDENTITY(1,1), 
    BILLING_ID INT,
    [DATE] DATETIME,
    CUSTOMER_ID INT,
    EMPLOYEE_ID INT,
    PRODUCT_ID INT,
    QUANTITY INT,
	AREA_ID INT,
	PRICE INT,
	DISCOUNT INT
);



CREATE TABLE AREA(
	AREA_ID INT PRIMARY KEY, -- ID del área
    REGION NVARCHAR(255), -- Región (ajusta la longitud según tus necesidades)
    STATE NVARCHAR(255), -- Estado (ajusta la longitud según tus necesidades)
    CITY NVARCHAR(255), -- Ciudad (ajusta la longitud según tus necesidades)
    ZIPCODE NVARCHAR(10) -- Código postal (ajusta la longitud según tus necesidades)
);

CREATE TABLE date
(
    DATE_ID INT PRIMARY KEY IDENTITY(1,1), -- ID de la fecha (clave primaria y autoincremental)
    SEMESTER INT, -- Semestre
    BIMESTER INT, -- Bimestre
    [DATE] DATE, -- Fecha (DATE es el tipo de dato para fechas en SQL Server)
    YEAR INT, -- Año
    MONTH INT, -- Mes
    DAY INT, -- Día
    [TIME] TIME, -- Hora (TIME es el tipo de dato para horas en SQL Server)
    VARIATION INT -- Variación (ajusta el tipo de dato según tus necesidades)
);
