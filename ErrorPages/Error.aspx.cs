using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ErrorPages_Error : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString == null) return;
        if (Request.QueryString["errCode"] == null) return;
        string errString = Request.QueryString["errCode"];
        string errMessage = "UNKNOWN ERROR"; 
        if(errString != "" )
        {
            int errCode = int.Parse(errString);
            switch (errCode)
            {
                case 1:
                    errMessage = "1";
                    break;
                case 2:
                    errMessage = "2";
                    break;
                case 3:
                    errMessage = "3";
                    break;
                case 4:
                    errMessage = "4";
                    break;
                case 5:
                    errMessage = "5";
                    break;
                case 6:
                    errMessage = "6";
                    break;
                case 7:
                    errMessage = "7";
                    break;
                default:
                    errMessage = "NO DESCRIPTION";
                    break;
            }
            ErrorNumber.Text = errCode.ToString();
        }
        else
        {
            ErrorNumber.Text = "UNKNOWN";
        }
        ErrorMessage.Text = errMessage;
       
    }
}