"use strict";
var GridProveedor;
(function (GridProveedor) {
    if (MensajeApp != "") {
        Toast.fire({ icon: "success", title: MensajeApp });
    }
    function OnclickEliminar(id) {
        ComfirmAlert("¿Desea eliminar el registro?", "Eliminar", "warning", '#3085d6', '#d33')
            .then(function (result) {
            if (result.isConfirmed) {
                window.location.href = "Proveedor/Grid?handler=Eliminar&id=" + id;
            }
        });
    }
    GridProveedor.OnclickEliminar = OnclickEliminar;
    $("#GridView").DataTable();
})(GridProveedor || (GridProveedor = {}));
//# sourceMappingURL=Grid.js.map