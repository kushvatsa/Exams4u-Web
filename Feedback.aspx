<%@ Page Title="" Language="C#" MasterPageFile="~/Master-head-left-foot.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:30px 0 0 30px;">
        <div style=" font-size:25px; color:#336699;">Feedback
        </div>
            <%--form--%>
            <div style="height:396px; width:431px;">
            <div style=" float:left; height:29px; width:414px; margin:30px 0 0 10px; color:#336699;">
            <div style=" float:left; height:50px; color:Red;">*</div>How would you rate your experience using Exams4u?
            </div>
            <div style=" clear:both; float:left; height:32px; margin: 10px 0 0 10px;">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <div style="clear:both; float:left; height:26px; padding-top:10px; width:340px; margin:0 0 0 10px; color:#336699;">&nbsp;&nbsp;Your feedback&nbsp;:
            </div>
            <div style=" clear:both; float:left; height:94px; margin:10px 0 0 10px;">
            
             <asp:TextBox ID="TextBox1" runat="server" Height="85px" TextMode="MultiLine" 
                    Width="250px"></asp:TextBox>
                    &nbsp;</div> 
            
            <div style="clear:both; height:55px; width:268px; text-align:left; padding:20px 0 0 20px;">
                <asp:ImageButton ID="btnsend" runat="server" 
                    ImageUrl="~/Images/img_butn_send.png" onclick="btnsend_Click" />
            </div> &nbsp;
        <asp:Label ID="r" runat="server" Text=""></asp:Label>
        <asp:Label ID="g" runat="server" Text=""></asp:Label>
            </div>

    </div>
</asp:Content>

