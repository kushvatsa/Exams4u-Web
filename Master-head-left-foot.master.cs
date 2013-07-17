using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_head_left_foot : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Signinname"] == null)
        {
            Response.Redirect("Signin.aspx");
        }
        else
        {
           Label1.Text = Convert.ToString(Session["Signinname"]);
            
        }
        
        
       
        
        DateTime dt;

        dt = DateTime.Now;

        lbldate.Text = dt.ToLongDateString();

        
    }
}
