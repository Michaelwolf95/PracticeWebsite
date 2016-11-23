using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubPages_ASPX_Products : BasePage//System.Web.UI.Page
{
    List<ProductItem> productItems = new List<ProductItem>();
    List<ProductItem> selectedProductItems = new List<ProductItem>();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = DateTime.Now.ToString();
        if (IsPostBack) return;

        productItems = ProductItem.GenterateGenericInventoryList();

        foreach(ProductItem p in productItems)
        {
            ListItem li = new ListItem();
            li.Value = p.ProductPrice.ToString();
            li.Attributes.Add("Price", p.ProductPrice.ToString());
            li.Text = p.GetDescription();
            ListBox1.Items.Add(li);
        }
        UpdateShoppingCartLabel();
        UpdateTotalCostLabel();

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in ListBox1.Items)
        {
            if (li.Selected)
            {
                if(!ListBox2.Items.Contains(li))
                {
                    ListBox2.Items.Add(li);
                }
            }
        }
        ListBox1.SelectedIndex = -1;
        UpdateShoppingCartLabel();
        UpdateTotalCostLabel();
    }
    protected void RemoveButton_Click(object sender, EventArgs e)
    {
        ListItemCollection removeQueue = new ListItemCollection();
        foreach (ListItem li in ListBox2.Items)
        {
            if (li.Selected)
            {
                if (ListBox2.Items.Contains(li))
                {
                    removeQueue.Add(li);
                }
            }
        }
        foreach(ListItem rli in removeQueue)
        {
            if (ListBox2.Items.Contains(rli))
            {
                ListBox2.Items.Remove(rli);
            }
        }
        UpdateShoppingCartLabel();
        UpdateTotalCostLabel();
    }

    //protected void OnKeyDown(object sender, KeyPressEventArgs e)
    //{

    //}
    private void UpdateTotalCostLabel()
    {
        decimal totalCost = 0m;
        foreach (ListItem li in ListBox2.Items)
        {
            totalCost += Decimal.Parse(li.Value);
        }
        TotalCostLabel.Text = "Total Cost = $" + totalCost.ToString();

    }
    private void UpdateShoppingCartLabel()
    {
        string str = "";
        foreach (ListItem li in ListBox2.Items)
        {
           str += li.Text + "<br/>";
        }
        if (str.Length == 0)
        {
            str = "Nothing";
        }
        //else
        //{
        //    str = str.Substring(0, str.Length - 2) + ".";
        //}
        ShoppingCartLabel.Text = str;

    }

}