namespace ProveedorEdit {

    var Formulario = new Vue(
        {
            data:
            {
                Formulario : "#formEdit"
            },
            mounted()
            {
                CreateValidator(this.Formulario);
            }
        });

    Formulario.$mount("AppEdit");
}