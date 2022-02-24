-- =============================================
-- Author:        <KADIR FLORES>
-- Create date:   <11-02-2022>
-- Description:   <Procedimeinto que devielve el listado de proveedores>
-- =============================================

CREATE PROCEDURE [dbo].[ProveedorActualizar]

	@IdProveedor INT,
	@Identificacion VARCHAR(250),
	@Nombre VARCHAR(250),
	@PrimerApellido VARCHAR(250),
	@SegundoApellido VARCHAR(250),
	@Edad INT,
	@FechaNacimiento DATETIME
AS
 BEGIN
  SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

  BEGIN TRY

  UPDATE dbo.Proveedor SET
  
    Identificacion = @Identificacion,
    Nombre = @Nombre,
	PrimerApellido = @PrimerApellido,
	SegundoApellido = @SegundoApellido,
	Edad = @Edad,
	FechaNacimiento = @FechaNacimiento
WHERE
	IdProveedor= @IdProveedor

  COMMIT TRANSACTION TRASA
  SELECT 0 AS CodeError,'' AS MsgError

  END TRY

 BEGIN CATCH
   SELECT
		ERROR_NUMBER() AS CodError,
		ERROR_MESSAGE() AS MsgError

 ROLLBACK TRANSACTION TRASA

 END CATCH

 END