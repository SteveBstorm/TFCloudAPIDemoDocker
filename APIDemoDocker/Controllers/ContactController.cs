using APIDemoDocker.Models;
using Dapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace APIDemoDocker.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContactController(SqlConnection cnx) : ControllerBase
    {
        [HttpGet]
        public IActionResult GetAll()
        {
            try
            {
                return Ok(cnx.Query<Contact>("SELECT * FROM Contact"));

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
