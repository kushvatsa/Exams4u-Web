<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
   <script language="javascript" type="text/javascript">
       function validate() {
           if (document.getElementById("<%=SupUser.ClientID%>").value == "") {
               alert("Enter Username");
               document.getElementById("<%=SupUser.ClientID%>").focus();
               return false;
           }
           if (document.getElementById("<%=SupPassword.ClientID%>").value == "") {
               alert("Enter Password");
               document.getElementById("<%=SupPassword.ClientID%>").focus();
               return false;
           }
           var pass = document.getElementById("<%=SupPassword.ClientID%>").value;
           var repass = document.getElementById("<%=RePassword.ClientID%>").value;
           if(pass != repass)
            {
                alert("Password doesn\'t match");
                document.getElementById("<%=RePassword.ClientID%>").focus();
                return false;
            }

       }
   </script>
    <link href="style-Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <%--Header--%>
        <div id="head">
            <div style="height:30px; padding-top:20px;">
                <div style="float:left; font-size:25px; color:#ffffff; width:1300px; height:30px; text-align:center;">
                 Welcome To Exams4U 
                </div>

                
            </div>
         
        </div>
        <%--header-close--%>
        
         <%--allin one div--%>
    <div id="all">
    
    <%--main area--%>
    <div id="main">
            <%--signup--%>
            <div id="r">

                    <div style="width:400px; height:70px;">
                        <p style="color:#336699; text-align:center; font-size:30px; font-weight:bold; padding-top:30px;">Signup</p>
                    </div>
                             <br />


                <div style=" width:350px;height:150px;">
                    <div style="float:left; width:150px; height:150px;">
                    <div class="aests">
                    Username:
                    </div>
                    <div class="aests">
                    Password:
                    </div>
                    <div class="aests">
                    Retype-Password:
                    </div>
                    </div>
                 
                 <div style="float:left; width:200px; height:150px;">
                    <div class="bests">
                        <asp:TextBox ID="SupUser" runat="server"  Width="130px"></asp:TextBox>
                    </div>
                    <div class="bests">
                        <asp:TextBox ID="SupPassword" runat="server"  TextMode="Password" Width="130px"></asp:TextBox>
                    </div>
                    <div class="bests">
                        <asp:TextBox ID="RePassword" runat="server"    TextMode="Password" Width="130px"></asp:TextBox>
                    </div>
                 </div>
                
                </div>

                <div style=" clear:both; height:30px; width:300px; text-align:center;">
                    <asp:Button ID="Button2" runat="server" Text="Signup" ForeColor="#336699" OnClientClick="return validate()" 
                        onclick="Button2_Click"  Width="64px" />

                    <div style=" clear:both; color:Green; margin:5px 0 0 5px; text-align:left; width: 347px; font-size:12px;">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <hr />
                    <div class="hf" style=" clear:both; height:25px; width:330px; text-align:right; padding-top:4px;"><a href="Signin.aspx">For Signin , Click Here</a>
                    </div>
                </div>
        </div>
            </div>
    </div>
   
    </form>
</body>
</html>
