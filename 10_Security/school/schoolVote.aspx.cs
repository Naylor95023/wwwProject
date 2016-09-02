using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _10_Security_store_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        timeLabel.Text = DateTime.Now.ToString();
        if (!IsPostBack)
        {
            userLabel.Text = Session["userName"].ToString();

        }


    }


    protected void schoolRadioButtonList_SelectedIndexChanged1(object sender, EventArgs e)
    {
        schoolFormView.PageIndex = schoolRadioButtonList.SelectedIndex;
    }
    protected void youtubeIdHiddenField_ValueChanged(object sender, EventArgs e)
    {

    }
    protected void schoolFormView_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        pollSqlDataSource.Insert();
        Session["userName"] = userLabel.Text;
        Session["schoolId"] = schoolRadioButtonList.SelectedValue;
        Session["name"] = schoolRadioButtonList.SelectedItem.Text;
        Session["time"] = timeLabel.Text;


        Response.Redirect("voteList.aspx");
    }
    protected void addressTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}