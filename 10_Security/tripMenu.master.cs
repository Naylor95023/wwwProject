using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _10_Security_tripMenu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["fbID"] != null)
        {
            FacebookLogin_LoggedIn();
        }


    }
    protected void TreeView_TreeNodeDataBound(object sender, TreeNodeEventArgs e)
    {
        if (e.Node.Text == "郵件通訊")
        {
            e.Node.Target = "_blank";
        }
    }
    protected void YouTravelLogin_LoggedIn(object sender, EventArgs e)
    {
        Login tripLogin = (Login)tripLoginView.FindControl("YouTravelLogin");
        Session["userName"] = tripLogin.UserName;
        Session["email"] = Membership.GetUser(tripLogin.UserName).Email.ToString();
    }
    protected void FacebookLogin_LoggedIn()
    {
        FormsAuthentication.SetAuthCookie("FacebookUser", false);

        Session["picture"] = "https://graph.facebook.com/" + Request.Params["fbID"] + "/picture";
        Session["userName"] = Request.Params["fbName"];
        Session["email"] = Request.Params["fbEmail"];

        Response.Redirect("homePage.aspx");
    }
    protected void LoginStatus_LoggedOut(object sender, EventArgs e)
    {
        Session["picture"] = null;
        if(Context.User.Identity.Name=="FacebookUser"){
            Response.Write("<script>window.onload=fuction(){FacebookLogout();}</script>");
        }
    }
    protected void tripLoginView_ViewChanged(object sender, EventArgs e)
    {

    }
    protected void tripLoginView_Load(object sender, EventArgs e)
    {

    }
    protected void userImage_Load(object sender, EventArgs e)
    {
        if (Session["picture"] != null)
        {
            Image userImage = (Image)tripLoginView.FindControl("userImage");
            userImage.ImageUrl = Session["picture"].ToString();
            userImage.Visible = true;
        }
    }
}
