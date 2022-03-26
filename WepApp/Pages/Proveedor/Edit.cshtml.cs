using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WBL;

namespace WepApp.Pages.Proveedores
{
    public class EditModel : PageModel
    {
        private readonly IProveedorService proveedor;

        public EditModel(IProveedorService proveedor)
        {
            this.proveedor = proveedor;
        }

        [BindProperty(SupportsGet =true)]
        public int? id { get; set; }

        [BindProperty]
        public ProveedorEntity Entity { get; set; } = new ProveedorEntity();

        public async Task<IActionResult> OnGet()
        {
            try
            {
                if (id.HasValue)
                {
                    Entity = await proveedor.GETBYID(new() { 
                    IdProveedor=id
                    });
                }

                return Page();
            }
            catch (Exception ex)
            {
                return Content(ex.Message);
            }
        }

        public async Task<IActionResult> OnPostAsync()
        {
            try
            {
                if (Entity.IdProveedor.HasValue)
                {
                    var result = await proveedor.UPDATE(Entity);

                    if (result.CodError != 0) throw new Exception(result.MsgError);
                    TempData["Msg"] = "Se actualizo correctamente";
                }
                else
                {
                    var result = await proveedor.CREATE(Entity);

                    if (result.CodError != 0) throw new Exception(result.MsgError);
                    TempData["Msg"] = "Se agrego correctamente";
                }

                return RedirectToPage("Grid");
            }
            catch (Exception ex)
            {

                return Content(ex.Message);
            }
        }

    }
}
