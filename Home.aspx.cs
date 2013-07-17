using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
   
    protected void btn_go_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            int category = Convert.ToInt16(hfcategory.Value);
            int level = Convert.ToInt16(hflevel.Value);
            

            //for category
            string opt = rbt1.SelectedValue;
            if (opt == "1")
            {
                lblcategory.Text = "Asp.Net";
            }

            else if (opt == "2")
            {
                lblcategory.Text = "C/C-plus";
            }
            else if (opt == "3")
            {
                lblcategory.Text = "Networking";
            }
            else if (opt == "4")
            {
                lblcategory.Text = "Php";
            }


            //for level
            string num = rbt2.SelectedValue;
            if (num == "1")
            {
                lbllevel.Text = "Beginner";
            }
            else if (num == "2")
            {
                lbllevel.Text = "Intermediate";
            }
            else if (num == "3")
            {
                lbllevel.Text = "Professional";
            }


            //for timer
            String tim = rbttimer.SelectedValue;
            if (tim == "1")
            {
                int a = 1 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "2")
            {
                int a = 2 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "3")
            {
                int a = 3 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "4")
            {
                int a = 4 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "5")
            {
                int a = 5 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "6")
            {
                int a = 6 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "7")
            {
                int a = 7 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "8")
            {
                int a = 8 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "9")
            {
                int a = 9 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }
            else if (tim == "10")
            {
                int a = 10 * 60;
                string ago = a.ToString();
                Session["Timer"] = ago;
            }

            // for xml files storation.



            //networking

            if (lblcategory.Text == "Networking" && lbllevel.Text == "Beginner")
            {
                lblxml.Text = "Beg_networking.xml";
            }
            else if (lblcategory.Text == "Networking" && lbllevel.Text == "Intermediate")
            {
                lblxml.Text = "Int_networking.xml";
            }
            else if (lblcategory.Text == "Networking" && lbllevel.Text == "Professional")
            {
                lblxml.Text = "Pro_networking.xml";
            }
            //php

            else if (lblcategory.Text == "Php" && lbllevel.Text == "Beginner")
            {
                lblxml.Text = "Beg_php.xml";
            }
            else if (lblcategory.Text == "Php" && lbllevel.Text == "Intermediate")
            {
                lblxml.Text = "Int_php.xml";
            }
            else if (lblcategory.Text == "Php" && lbllevel.Text == "Professional")
            {
                lblxml.Text = "Pro_php.xml";
            }

            //c/c-plus

            else if (lblcategory.Text == "C/C-plus" && lbllevel.Text == "Beginner")
            {
                lblxml.Text = "Beg_C.xml";
            }
            else if (lblcategory.Text == "C/C-plus" && lbllevel.Text == "Intermediate")
            {
                lblxml.Text = "Int_C.xml";
            }
            else if (lblcategory.Text == "C/C-plus" && lbllevel.Text == "Professional")
            {
                lblxml.Text = "Pro_C.xml";
            }

            // asp.net

            else if (lblcategory.Text == "Asp.Net" && lbllevel.Text == "Beginner")
            {
                lblxml.Text = "Beg_asp.xml";
            }
            else if (lblcategory.Text == "Asp.Net" && lbllevel.Text == "Intermediate")
            {
                lblxml.Text = "Int_asp.xml";
            }
            else if (lblcategory.Text == "Asp.Net" && lbllevel.Text == "Professional")
            {
                lblxml.Text = "Pro_asp.xml";
            }

            //for sending values
            if (opt == "" || num == "")
            {
                lblcategory.Text = "";
                lbllevel.Text = "";
                Errorlabel.Text = "Error : - Fill the All Choices";
            }
            else
            {
                String url = string.Format("Index2.aspx?category={0}&level={1}&xmlfilename={2}", lblcategory.Text, lbllevel.Text, lblxml.Text);
                Response.Redirect(url);


            }

        }
        catch(Exception es)
        {
            lblhomepage1.BackColor = System.Drawing.Color.Yellow;
            lblhomepage1.Text = es.Message;
        }

    }

}