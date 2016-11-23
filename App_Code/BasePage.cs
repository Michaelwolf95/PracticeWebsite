using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

/// <summary>
/// The BasePage used for the code behind of all sub pages.
/// </summary>
public class BasePage : System.Web.UI.Page
{
    //protected System.Web.UI.HtmlControls.HtmlGenericControl MainDiv;

    public string backgroundImageURL = "";

    public BasePage()
    {
        this.PreRender += Page_PreRender;
        this.PreInit += Page_PreInit;
        //
        // TODO: Add constructor logic here
        //
    }
   
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(this.Title) || this.Title.Equals("Untitled Page",
        StringComparison.CurrentCultureIgnoreCase))
        {
            throw new Exception("Page title cannot be \"Untitled Page\" or an empty string.");
        }


    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies.Get("Theme");
        //Debug.WriteLine(c.Value);
        //c.Value = "Muted_Gradient";
        if (c != null)
        {
            string folder = Server.MapPath("~/AppThemes/" + c.Value);
            Debug.WriteLine("Looking for folder.. " + folder);
                Page.Theme = c.Value;
            if (System.IO.Directory.Exists(folder))
            {
                Debug.WriteLine("Setting PageTheme to " + folder);
                //Page.Theme = c.Value;
            }
        }
        //if (Request.Cookies["Theme"] != null)
        //{
        //    //string userSettings;
        //    if (Request.Cookies["Theme"]["Value"] != null)
        //    {
        //        //Request.Cookies["Theme"]["Value"] = "Muted_Gradient";
        //        Debug.WriteLine(Request.Cookies["Theme"]["Value"]);
        //        this.Theme = Request.Cookies["Theme"]["Value"];
        //    }
        //}
        //else
        //{
        //    //if (string.IsNullOrEmpty(this.Theme) || this.Theme.Equals("",
        //    //StringComparison.CurrentCultureIgnoreCase))
        //    //{
        //    //    //this.Theme = "Muted_Gradient";
        //    //    this.Theme = "Halloween"; //((MyMasterPage)this.Master).//
        //    //}

        //    this.Theme = "Muted_Gradient";
        //    HttpCookie myCookie = new HttpCookie("Theme");
        //    myCookie["Value"] = this.Theme;
        //    myCookie.Expires = DateTime.Now.AddDays(1d);
        //    Response.Cookies.Add(myCookie);
        //}


        HtmlControl bodyControl = (HtmlControl)Master.FindControl("Body");
        bodyControl.Style.Add("background-image", GetBackgroundImageURL());

        


        //HtmlControl styleSheetControl = (HtmlControl)Master.FindControl("ThemeStyleSheet");
        //styleSheetControl.Attributes.Remove("href");
        //styleSheetControl.Attributes.Add("href", "/App_Themes/" + this.Theme + "/StyleSheets/ThemeStyle.css");

        //ThemeStyleSheet

        //switch (Request.QueryString["theme"])
        //{
        //    case "Muted_Gradient":
        //        Page.Theme = "Muted_Gradient";
        //        break;
        //    //case "Pink":
        //    //    Page.Theme = "PinkTheme";
        //    //    break;
        //}
    }

    public string GetBackgroundImageURL()
    {
        return "url(/App_Themes/" + this.Theme + "/Images/Background.jpg";
    }
}