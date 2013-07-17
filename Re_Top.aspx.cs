using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Re_Top : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XDocument xdocx = XDocument.Load(Server.MapPath("~/Remark_Top.xml"));

        string tbl = "";
        foreach (var remark in xdocx.Descendants("Remark"))
        {
            tbl = tbl + "<tr>";
            tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Username").Value + "</td>";
            tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Date").Value + "</td>";
            tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Category").Value + "</td>";
            tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Level").Value + "</td>";
            tbl = tbl + "<td style='width:120px; text-align:center; font-size:14px;'>" + remark.Element("Marks").Value + "</td>";
            tbl = tbl + "</tr>";
        }

        lit.Text = "<table><tr><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Name</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Dated</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Category</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Level</th><th style='background-color:#336699; color:#FFFFFF; font-size:15px;'>Marks</th></tr>" + tbl + "</table>";
    }
}