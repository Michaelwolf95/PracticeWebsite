using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ContactUsForm : System.Web.UI.UserControl
{
    protected string _firstName = "";
    protected string _lastName = "";
    protected string _phoneNumber = "";
    protected string _email = "";
    protected string _comments = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FirstNameTextBox_TextChanged(object sender, EventArgs e)
    {
        _firstName = FirstNameTextBox.Text;
        NameLabel.Text = _lastName + " , " + _firstName;
    }
    protected void LastNameTextBox_TextChanged(object sender, EventArgs e)
    {
        _lastName = LastNameTextBox.Text;
        NameLabel.Text = _lastName + " , " + _firstName;
    }
    protected void PhoneNumberTextBox_TextChanged(object sender, EventArgs e)
    {
        _phoneNumber = PhoneNumberTextBox.Text;
        PhoneNumberLabel.Text = _phoneNumber;
    }
    protected void EmailTextBox_TextChanged(object sender, EventArgs e)
    {
        _email = EmailTextBox.Text;
        EmailLabel.Text = _email;
    }
    protected void ContactMethodRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("RADIO CHANGED!");
        ContactMethodLabel.Text = ContactMethodRadioButtonList.SelectedValue;
    }
    protected void InterestsCheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "";
        foreach (ListItem li in InterestsCheckBoxList.Items)
        {
            if (li.Selected)
            {
                str += li.Value + ", ";
            }
        }
        if (str.Length == 0)
        {
            str = "Nothing";
        }
        else
        {
            str = str.Substring(0, str.Length - 2) + ".";
        }
        InterestsLabel.Text = str;
    }

    protected void Comments_TextChanged(object sender, EventArgs e)
    {
        _comments = Comments.Text;
        CommentsLabel.Text = _comments;
    }


    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (Page.IsValid)
        {
            //string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            //string mailBody = File.ReadAllText(fileName);
            //mailBody = mailBody.Replace("##Name##", Name.Text);
            //mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
            //mailBody = mailBody.Replace("##HomePhone##", PhoneHome.Text);
            //mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
            //mailBody = mailBody.Replace("##Comments##", Comments.Text);
            //MailMessage myMessage = new MailMessage();
            //myMessage.Subject = "Response from web site";
            //myMessage.Body = mailBody;
            //myMessage.From = new MailAddress("you@example.com", "Sender Name");
            //myMessage.To.Add(new MailAddress("you@example.com", "Receiver Name"));
            //myMessage.ReplyToList.Add(new MailAddress(EmailAddress.Text));
            //SmtpClient mySmtpClient = new SmtpClient();
            //mySmtpClient.Send(myMessage);
            //Message.Visible = true;
            //FormTable.Visible = false;
            System.Threading.Thread.Sleep(10000);
        }
    }
}