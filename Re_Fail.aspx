<%@ Page Title="" Language="C#" MasterPageFile="~/Master-head-left-foot.master" AutoEventWireup="true" CodeFile="Re_Fail.aspx.cs" Inherits="Re_Fail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        td, th
        {
            border: 1px solid #eeeeee;
        }
        
        table
        {
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="color:#336699; font-size:20px; margin:15px 0 0 50px;">List of Failed Students</div>
    
    <div style="margin: 20px 0 0 50px; height:450px; width:650px;">
        <div style=" overflow:auto; height:450px; width:650px;">
        <asp:Literal ID="lit" runat="server" Text=""></asp:Literal>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

