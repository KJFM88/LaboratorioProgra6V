-- =============================================
-- Author:        <KADIR FLORES>
-- Create date:   <11-02-2022>
-- Description:   <Procedidmiento que devuelve el listado de proveedores>
-- =============================================
CREATE PROCEDURE [dbo].[ProveedorObtener]
	@IdProveedor INT = NULL
AS
BEGIN
	SET NOCOUNT ON

	SELECT
			IdProveedor,
			Nombre,
			Identificacion,
			PrimerApellido,
			SegundoApellido,
			Edad,
			FechaNacimiento
	FROM
		dbo.Proveedor
	WHERE
		(@IdProveedor IS NULL OR IdProveedor=@IdProveedor)

END
