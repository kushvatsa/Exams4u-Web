<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Home_Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signin</title>
    <script language="javascript" type="text/javascript">
       function validate() {
           if (document.getElementById("<%=TextBoxname.ClientID%>").value == "") {
               alert("Enter Username");
               document.getElementById("<%=TextBoxname.ClientID%>").focus();
               return false;
           }
           if (document.getElementById("<%=TextBoxpassword.ClientID%>").value == "") {
               alert("Enter Password");
               document.getElementById("<%=TextBoxpassword.ClientID%>").focus();
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
        <%--Signin--%>
        <div id="l">
            <div style="width:400px; height:70px;">
            <p style="color:#336699; text-align:center; font-size:30px; font-weight:bold; padding-top:30px;">Signin</p>
            </div>
            <br />


                <div style=" width:350px;height:100px;">
                    <div style="float:left; width:150px; height:100px;">
                    <div class="tests">
                    Username:
                    </div>
                    <div class="tests">
                    Password:
                    </div>
                    </div>
                 
                 <div style="float:left; width:200px; height:100px;">
                    <div class="rests">
                        <asp:TextBox ID="TextBoxname" runat="server" Width="130px"></asp:TextBox>
                    </div>
                    <div class="rests">
                        <asp:TextBox ID="TextBoxpassword" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                    </div>
                 </div>
                
                </div>

                <div style=" clear:both; height:40px; width:300px; text-align:right; padding-top:10px;">
                    <asp:Button ID="Button1" runat="server" Text="Signin" ForeColor="#336699" OnClientClick="return validate()" 
                        onclick="Button1_Click" Width="55px" />
                </div>
                <div style=" clear:both; margin-left:5px; color:Red;"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                <hr />
                <div class="hf" style=" clear:both; height:25px; width:300px; text-align:right;"><a href="Signup.aspx">Don't Have Id , Signup Here</a>
                </div>
                
           </div>
           

               
      </div>
            </div>
    
    </form>
</body>
</html>
