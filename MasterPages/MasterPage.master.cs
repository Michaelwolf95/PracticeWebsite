using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.Content;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{
    public string WebsiteTheme = "";
    CookieParameter webTheme;
    protected void Page_Load(object sender, EventArgs e)
    {
        TimeLabel.Text = System.DateTime.Now.ToString();
        //BackgroundImage.ImageUrl = "../App_Themes/" + this.Page.Theme + "/Images/Background.jpg";
        System.Web.UI.HtmlControls.HtmlGenericControl MainDiv;

        if (!Page.IsPostBack)
        {
            string selectedTheme = Page.Theme;
            HttpCookie preferredTheme = Request.Cookies.Get("Theme");
            if (preferredTheme != null)
            {
                selectedTheme = preferredTheme.Value;
                //Request.Cookies.Get("Theme").Value = SwapThemes(selectedTheme);
            }
            if (!string.IsNullOrEmpty(selectedTheme))
            {
                //ListItem item = ThemeList.Items.FindByValue(selectedTheme);
                //if (item != null)
                //{
                //    item.Selected = true;
                //}
            }
        }
    }
    //protected void Page_PreInit(object sender, EventArgs e)
    //{

    //    if (Request.Cookies["Theme"] != null)
    //    {
    //        //string userSettings;
    //        if (Request.Cookies["Theme"]["Value"] != null)
    //        { this.Page.Theme = Request.Cookies["Theme"]["Value"]; }
    //    }
    //    else
    //    {
    //        //if (string.IsNullOrEmpty(this.Theme) || this.Theme.Equals("",
    //        //StringComparison.CurrentCultureIgnoreCase))
    //        //{
    //        //    //this.Theme = "Muted_Gradient";
    //        //    this.Theme = "Halloween"; //((MyMasterPage)this.Master).//
    //        //}
    //        this.Page.Theme = "Halloween";
    //        HttpCookie myCookie = new HttpCookie("Theme");
    //        myCookie["Value"] = this.Page.Theme;
    //        myCookie.Expires = DateTime.Now.AddDays(1d);
    //        Response.Cookies.Add(myCookie);
    //    }
    //}

    protected void ThemeSwap_Click(object sender, EventArgs e)
    {
        //if (Request.Cookies["Theme"] != null)
        //{
        //    string current;
        //    if ((current = Request.Cookies["Theme"]["Value"]) != null)
        //    {
        //        //HttpCookie c = Request.Cookies["Theme"];
        //    }
        //}
        HttpCookie cookie = Request.Cookies.Get("Theme");
        if(cookie == null)
        {
            cookie = new HttpCookie("Theme");
            cookie.Expires = DateTime.Now.AddDays(1);
            cookie.Value = "Muted_Gradient";
            Response.Cookies.Add(cookie);
            Response.Redirect(Request.Url.ToString());
        }
        else
        {
            cookie.Value = SwapThemes(cookie.Value);
            Response.Cookies.Add(cookie);
            Debug.WriteLine("Swapped!");
            Response.Redirect(Request.Url.ToString());
        }

        //Response.Redirect(Request.RawUrl);
        //Response.Redirect(Request.Url.ToString());
    }
    private string SwapThemes(string current) //TEMP
    {
        Debug.WriteLine("Swapping from " + current + "...");
        if (current.Contains("Halloween"))
        {
            Debug.WriteLine("... to " + "Muted_Gradient");
            return "Muted_Gradient";
        }
        else
        {
            Debug.WriteLine("... to " + "Halloween");
            return "Halloween";
        }
    }
}
