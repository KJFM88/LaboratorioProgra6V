using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD
{
    public class DataAccess
    {
        private readonly IConfiguration configuration;

        public DataAccess(IConfiguration _configuration)
        {
            configuration = _configuration;
        }

        public SqlConnection DbConnetion => new SqlConnection(
            new SqlConnectionStringBuilder(configuration.GetConnectionString("Conn")).ConnectionString 
            );

        public async Task<IEnumerable<T>> QueryAsync<T>(string sp, object Param= null, int? Timeout=null)
        {
            try
            {
               
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
