using System;
using System.Web.UI;

namespace Chetancbsewebsite.Errors
{
    public partial class _500 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.StatusCode = 500;
        }
    }
}
