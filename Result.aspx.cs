using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            // level and category in sessions

            lbcategory.Text = Convert.ToString(Session["cat_session"]);
            lblevel.Text = Convert.ToString(Session["level_session"]);

            lblattemptedanswers.Text = Request.QueryString["attemptedanswers"];
            lblcorrectanswers.Text = Request.QueryString["correctanswers"];
            lblincorrectanswers.Text = Request.QueryString["incorrectanswers"];
            lblskipquestions.Text = Request.QueryString["skipquestions"];
            lbltotalmarks.Text = Request.QueryString["totalmarks"];
           

            // signin name 
            lblname.Text = Convert.ToString(Session["Signinname"]);
            int check = Convert.ToInt16(lbltotalmarks.Text);


            if (check >= 10 && check < 25)
            {
                lblresg.ForeColor = System.Drawing.Color.Green;
                lblresg.Text = "Congratulations!! You are Passed !!";

                XDocument xdocx = XDocument.Load(Server.MapPath("~/Remarks.xml"));

                 // adding to remarks page


                 XElement root = new XElement("Remark");
                         DateTime dt;
                         dt = DateTime.Now;
                         String datetimeshow = dt.ToLongDateString();
                         root.Add(new XElement("Username", lblname.Text));
                         root.Add(new XElement("Date", datetimeshow));
                         root.Add(new XElement("Category", lbcategory.Text));
                         root.Add(new XElement("Level", lblevel.Text));
                         root.Add(new XElement("Marks", lbltotalmarks.Text));
            
                         xdocx.Element("Remarks").Add(root);

                         xdocx.Save(Server.MapPath("~/Remarks.xml"));


            }
            if(check < 10)
            {
                lblresr.ForeColor = System.Drawing.Color.Red;
                lblresr.Text = "You are Failed , Good Luck For Next Time !!";

                XDocument xdocx = XDocument.Load(Server.MapPath("~/Remark_Fail.xml"));

                // adding to remarks page


                XElement root = new XElement("Remark");
                DateTime dt;
                dt = DateTime.Now;
                String datetimeshow = dt.ToLongDateString();
                root.Add(new XElement("Username", lblname.Text));
                root.Add(new XElement("Date", datetimeshow));
                root.Add(new XElement("Category", lbcategory.Text));
                root.Add(new XElement("Level", lblevel.Text));
                root.Add(new XElement("Marks", lbltotalmarks.Text));

                xdocx.Element("Remarks").Add(root);

                xdocx.Save(Server.MapPath("~/Remark_Fail.xml"));
            }

            if (check == 25)
            {
                lblresg.ForeColor = System.Drawing.Color.Green;
                lblresg.Text = "Congratulations!! You are Passed !!";

                XDocument xdocx = XDocument.Load(Server.MapPath("~/Remark_Top.xml"));

                // adding to remarks page


                XElement root = new XElement("Remark");
                DateTime dt;
                dt = DateTime.Now;
                String datetimeshow = dt.ToLongDateString();
                root.Add(new XElement("Username", lblname.Text));
                root.Add(new XElement("Date", datetimeshow));
                root.Add(new XElement("Category", lbcategory.Text));
                root.Add(new XElement("Level", lblevel.Text));
                root.Add(new XElement("Marks", lbltotalmarks.Text));

                xdocx.Element("Remarks").Add(root);

                xdocx.Save(Server.MapPath("~/Remark_Top.xml"));

            }


        } 
        catch (Exception ex)
        {
            lblresult1.BackColor = System.Drawing.Color.Yellow;
            lblresult1.Text = ex.Message;
        }

         
       
    }
}