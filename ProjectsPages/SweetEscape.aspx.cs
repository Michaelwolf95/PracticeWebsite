using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectsPages_SweetEscape : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Transfer("/ErrorPages/Error.aspx?errCode=7");
    }
}