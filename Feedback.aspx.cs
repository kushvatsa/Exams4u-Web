using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, ImageClickEventArgs e)

    {
        string opt = RadioButtonList1.SelectedValue;
        r.Text = "";
        g.Text = "";
        if (opt == "1")
        {
            
            g.ForeColor = System.Drawing.Color.Green;
            g.Text = "Thanks for taking the time to give us feedback";

            XDocument xdocx = XDocument.Load(Server.MapPath("~/Feedback_Store.xml"));

            // adding to remarks page


            XElement root = new XElement("User");
            DateTime dt;
            dt = DateTime.Now;
            String datetimeshow = dt.ToLongDateString();
            String name = Convert.ToString(Session["Signinname"]);
            root.Add(new XElement("Username", name));
            root.Add(new XElement("Dated", datetimeshow));
            root.Add(new XElement("Feedback", TextBox1.Text));
            root.Add(new XElement("Rate" , "1"));


            xdocx.Element("Feedbacks").Add(root);

            xdocx.Save(Server.MapPath("~/Feedback_Store.xml"));
        }
        else if (opt == "2")
        {
            g.ForeColor = System.Drawing.Color.Green;
            g.Text = "Thanks for taking the time to give us feedback";

            XDocument xdocx = XDocument.Load(Server.MapPath("~/Feedback_Store.xml"));

            // adding to remarks page


            XElement root = new XElement("User");
            DateTime dt;
            dt = DateTime.Now;
            String datetimeshow = dt.ToLongDateString();
            String name = Convert.ToString(Session["Signinname"]);
            root.Add(new XElement("Username", name));
            root.Add(new XElement("Dated", datetimeshow));
            root.Add(new XElement("Feedback", TextBox1.Text));
            root.Add(new XElement("Rate", "2"));


            xdocx.Element("Feedbacks").Add(root);

            xdocx.Save(Server.MapPath("~/Feedback_Store.xml"));
            
        }
        else if (opt == "3")
        {
            g.ForeColor = System.Drawing.Color.Green;
            g.Text = "Thanks for taking the time to give us feedback";

            XDocument xdocx = XDocument.Load(Server.MapPath("~/Feedback_Store.xml"));

            // adding to remarks page


            XElement root = new XElement("User");
            DateTime dt;
            dt = DateTime.Now;
            String datetimeshow = dt.ToLongDateString();
            String name = Convert.ToString(Session["Signinname"]);
            root.Add(new XElement("Username", name));
            root.Add(new XElement("Dated", datetimeshow));
            root.Add(new XElement("Feedback", TextBox1.Text));
            root.Add(new XElement("Rate", "3"));


            xdocx.Element("Feedbacks").Add(root);

            xdocx.Save(Server.MapPath("~/Feedback_Store.xml"));
            
        }
        else if (opt == "4")
        {
            g.ForeColor = System.Drawing.Color.Green;
            g.Text = "Thanks for taking the time to give us feedback";

            XDocument xdocx = XDocument.Load(Server.MapPath("~/Feedback_Store.xml"));

            // adding to remarks page


            XElement root = new XElement("User");
            DateTime dt;
            dt = DateTime.Now;
            String datetimeshow = dt.ToLongDateString();
            String name = Convert.ToString(Session["Signinname"]);
            root.Add(new XElement("Username", name));
            root.Add(new XElement("Dated", datetimeshow));
            root.Add(new XElement("Feedback", TextBox1.Text));
            root.Add(new XElement("Rate", "4"));


            xdocx.Element("Feedbacks").Add(root);

            xdocx.Save(Server.MapPath("~/Feedback_Store.xml"));
            
        }
        else if (opt == "5")
        {
            g.ForeColor = System.Drawing.Color.Green;
            g.Text = "Thanks for taking the time to give us feedback";

            XDocument xdocx = XDocument.Load(Server.MapPath("~/Feedback_Store.xml"));

            // adding to remarks page


            XElement root = new XElement("User");
            DateTime dt;
            dt = DateTime.Now;
            String datetimeshow = dt.ToLongDateString();
            String name = Convert.ToString(Session["Signinname"]);
            root.Add(new XElement("Username", name));
            root.Add(new XElement("Dated", datetimeshow));
            root.Add(new XElement("Feedback", TextBox1.Text));
            root.Add(new XElement("Rate", "5"));


            xdocx.Element("Feedbacks").Add(root);

            xdocx.Save(Server.MapPath("~/Feedback_Store.xml"));

        }
       
        else if(opt =="")
        {
            r.ForeColor = System.Drawing.Color.Red;
            r.Text = "Fill the choices First !!";
        }


       

    }
}