using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _10_Security_store_trip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            userLabel.Text = Session["userName"].ToString();

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("schoolVote.aspx");
    }
    protected void RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        schoolFormView.PageIndex = schoolRadioButtonList.SelectedIndex;
    }
    protected void addressTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}