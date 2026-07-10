CREATE DATABASE hospitaldb;
GO 

USE hospitaldb;
GO

CREATE TABLE paciente(
Numpaciente INT NOT NULL, 
Nombre VARCHAR(30) NOT NULL,
Apellido1 VARCHAR(15) NOT NULL,
Apellido2 VARCHAR(15) NOT NULL,
FechaNaci DATE NOT NULL,
CONSTRAINT pk_paciente
PRIMARY KEY (Numpaciente)
);

GO 
CREATE TABLE expediente(
NumExp INT NOT NULL, 
FechaApertura DATE NOT NULL,
TipoSangre CHAR(3) NULL,
Numpaciente INT NOT NULL,
CONSTRAINT pk_expediente
PRIMARY KEY (NumExp),
CONSTRAINT unique_Numpaciente
UNIQUE(Numpaciente),
CONSTRAINT fk_expediente_paciente
FOREIGN KEY (Numpaciente)
REFERENCES paciente(Numpaciente) 
);

SELECT * FROM paciente;