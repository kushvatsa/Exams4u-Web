using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Checking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        XDocument xdocx = XDocument.Load(Server.MapPath("~/Remark_Top.xml"));

        string tbl = "";
        string usercheck = Convert.ToString(Session["Signinname"]);
        foreach (var remark in xdocx.Descendants("Remark"))
        {
            if (usercheck == remark.Element("Username").Value)
            {
                tbl = tbl + "<tr>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Date").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Category").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Level").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Marks").Value + "</td>";
                tbl = tbl + "</tr>";
            }
        }

        XDocument xdocx1 = XDocument.Load(Server.MapPath("~/Remarks.xml"));


        foreach (var remark in xdocx1.Descendants("Remark"))
        {
            if (usercheck == remark.Element("Username").Value)
            {
                tbl = tbl + "<tr>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Date").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Category").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Level").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Marks").Value + "</td>";
                tbl = tbl + "</tr>";
            }
        }

        XDocument xdocx2 = XDocument.Load(Server.MapPath("~/Remark_Fail.xml"));


        foreach (var remark in xdocx2.Descendants("Remark"))
        {
            if (usercheck == remark.Element("Username").Value)
            {
                tbl = tbl + "<tr>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Date").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Category").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Level").Value + "</td>";
                tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Marks").Value + "</td>";
                tbl = tbl + "</tr>";
            }
        }

        lit.Text = "<table><tr><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Dated</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Category</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Level</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Marks</th></tr>" + tbl + "</table>";
    }
}