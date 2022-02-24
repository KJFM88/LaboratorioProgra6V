﻿CREATE TABLE [dbo].[Proveedor]
(
	IdProveedor INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Proveedor PRIMARY KEY CLUSTERED(IdProveedor),
    Identificacion VARCHAR(250) NULL, 
    Nombre VARCHAR(250) NOT NULL, 
    PrimerApellido VARCHAR(250) NOT NULL, 
    SegundoApellido VARCHAR(250) NOT NULL, 
    Edad INT NOT NULL, 
    [FechaNacimiento] DATETIME NOT NULL
)
WITH (DATA_COMPRESSION = PAGE)
GO

