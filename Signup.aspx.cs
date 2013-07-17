using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Xml;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    //    int i;
    //    string users = "kush/anumpam/varinder";
    //    string[] arr = users.Split('/');
    //    for (i = 0; i <= arr.Length - 1; i++)
    //    {
    //        if (arr[i] == TextBox6.Text)
    //        {

    //        }
    //    }

        Button2.Attributes.Add("onclick", "return validate()");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        XDocument xdocx = XDocument.Load(Server.MapPath("~/Users.xml"));
        String name = SupUser.Text.ToUpper().Substring(0, 1) + SupUser.Text.Substring(1).ToLower(); 
        var allusers = xdocx.Descendants("User");
        foreach (var user in allusers)
        {
            if (name == user.Element("Username").Value)
            {
                Label1.Text = "Username is already taken by other user";
                break;
            }

            else
            {
                Label1.Text = "Your Id is created";

                XElement root = new XElement("User");
                //adding values to elements
                root.Add(new XElement("Username", name));
                root.Add(new XElement("Password", SupPassword.Text));
                //adding date
                     DateTime dt;

                    dt = DateTime.Now;

                    String date_sign = dt.ToLongDateString();

                root.Add(new XElement("Sign_date" , date_sign));
                xdocx.Element("Users").Add(root);
                //saving
                xdocx.Save(Server.MapPath("~/Users.xml"));
                break;


            }
               
            
        }

    }
}
            
        

        

        
    

    
        
    
