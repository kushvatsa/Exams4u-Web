using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.Security;

public partial class Home_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        Button1.Attributes.Add("onclick", "return validate()");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            XDocument xdocx = XDocument.Load(Server.MapPath("~/Users.xml"));
            String name = TextBoxname.Text.ToUpper().Substring(0,1) + TextBoxname.Text.Substring(1).ToLower(); 
        

            var allusers = xdocx.Descendants("User");

            foreach (var user in allusers)
            {
                if (name == user.Element("Username").Value && TextBoxpassword.Text == user.Element("Password").Value)
                {

                    Session["Signinname"]= name;
                    Response.Redirect("Home.aspx");
                    break;
                    
                }
                else
                {
                    Label1.Text = "You fill incorrect data";
                    
                }

            }
        }


        
        
    }
