<%@ Page Title="" Language="C#" MasterPageFile="~/Master-head-left-foot.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        
        .axes a
        {
            text-decoration:none;
            color:#336699;
        }
        .axes a:hover
        {
            text-decoration:underline;
            color:#000000;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style=" margin:20px 0 0 40px; font-size:25px; color:#336699;">Reports</div>
        <div style="Width:700px; height:400px; margin:20px 0 0 0;">
            <div class="axes" style="Margin:15px 0 0 60px ;"><a href="Checking.aspx">Checking My Result</a></div>
            <div class="axes" style="Margin:15px 0 0 60px ;"><a href="Re_Top.aspx">List of Students Pass With Merit</a></div>
            <div class="axes" style="Margin:15px 0 0 60px ;" ><a href="Re_Pass.aspx">List of Passed Students</a></div>
            <div class="axes" style="Margin:15px 0 0 60px ;"><a href="Re_Fail.aspx">List of Failed Students</a></div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

