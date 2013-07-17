<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome To Online Test</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var counter = setInterval(timer, 1000); //Setting time interval in milliseconds

        //Timer function
        function timer() {

            var count = document.getElementById("<%=hfCount.ClientID%>").value;
            var mins = document.getElementById("<%=hfMints.ClientID%>").value;
            var secs = document.getElementById("<%=hfSec.ClientID%>").value;
           

            secs = secs - 1; //Decrementing seconds
            count = count - 1; //Decrementing total count by 1

            document.getElementById("<%=hfCount.ClientID%>").value = count;
            document.getElementById("<%=hfSec.ClientID%>").value = secs;

            if (count <= 0) {
                clearInterval(counter);

                //               var hid = document.getElementById("");
                //               var hv = hid.value;
                var attques = document.getElementById("<%=hfCurQuestion.ClientID%>").value;
                var attans = document.getElementById("<%=Hfanswers.ClientID%>").value;
                var correct = document.getElementById("<%=Hfcorrect.ClientID%>").value;
                var incorrect = document.getElementById("<%=Hfincorrect.ClientID%>").value;
                var skip = document.getElementById("<%=Hfskip.ClientID%>").value;
                var totalmarks = document.getElementById("<%=hfmarks.ClientID%>").value;

                //counter ended
                alert("Time Over !");
                window.location = 'Result.aspx?attemptedquestions=' + attques + '&attemptedanswers=' + attans + '&correctanswers=' + correct + '&incorrectanswers=' + incorrect + '&skipquestions=' + skip + '&totalmarks=' + totalmarks ; 
                
                return;
            }


            //Calculating minutes left & initialising seconds to 60
            if (count % 60 == 0) {
                document.getElementById("<%=hfMints.ClientID%>").value = mins - 1;
                document.getElementById("<%=hfSec.ClientID%>").value = 60;
            }

            //Showing time left using inner html
            document.getElementById("showtime").innerHTML = mins + ":" + secs + "";

        }
      

        function quit() {
            var ans;

            ans = confirm("Do you really want to quit?");
            if (ans == false) return false;
        }

        function showinstructions() {

            window.open("Instructions.html", 'Instructions', "width=750, height=400, resizable=yes");
            return false;
        }


        // for set the page of browser


         
        function sizeshow() {
            var clientheight = document.documentElement.clientHeight;
            var clientwidth = document.documentElement.clientWidth;
          

            var setheight = parseInt(clientheight - 60 - 40 - 2);
            var setwidth = parseInt(clientwidth - 190 - 150 - 5);

            document.getElementById("content1new").style.height = setheight + 'px';
            document.getElementById("content-mid").style.height = setheight + 'px';
            document.getElementById("content2new").style.height = setheight + 'px';

            
            document.getElementById("content-mid").style.width = setwidth + 'px';
           

            return true;
        }
   
    </script>
</head>
<body onload=" return sizeshow();" onresize="return sizeshow();">
    <form id="form1" runat="server">
    <%--Header--%>
        <div id="head">
            
                <div style="float:left; font-size:25px; color:#ffffff; width:200px; height:40px; padding-left:9px; padding-top:20px;">
                Exams4U
                </div>

                <div style="float:right; color:#FFFFFF; font-size:15px; width:100px; height:60px; text-align:right;">
                     <div style="Clear:both; width:91px; height:22px;  padding:8px 9px 0 0;">Hello,&nbsp;<asp:Label ID="lblheadername" runat="server" Text="Label"></asp:Label></div>
                    
                     <div style="Clear:both; width:91px; height:25px; padding:5px 9px 0 0; "><a  href="Signin.aspx" class="logouts">logout</a></div>
                </div>

           
         
        </div>
        <%--header-close--%>
    <%--content1--%>
    <div id="content1new">
        <br />
        <div class="left_tagnew" style="float: left; width: 70px; color: #336699;">
            Category</div>
        <div style="float: left; padding: 15px 0 0 0; width: 85px;">
            :&nbsp;<asp:Label ID="lblcat" runat="server" Text=""></asp:Label></div>
        <br />
        <div class="left_tagnew" style="width: 70px; color: #336699;">
            Level</div>
        <div style="float: left; padding: 15px 0 0 0; width: 85px;">
            :&nbsp;<asp:Label ID="lbllev" runat="server" Text=""></asp:Label></div>
        <br />
        <br />
        <div class="left_tagnew" style="color: #336699;">
            Questions left</div>
        <div style="float: left; padding: 15px 0 0 0; width: 55px;">
            :&nbsp;<asp:Label ID="Lblleft" runat="server" Text="4"></asp:Label></div>
        <br />
        <div class="left_tagnew" style="color: #336699;">
            Total Questions</div>
        <div style="float: left; padding: 15px 0 0 0; width: 55px;">
            :&nbsp;5</div>
        <br />
    </div>
    <%--contebt-mid--%>
    <div id="content-mid">
        <%--Page error label--%>
        <div style="text-align: center; height: 25px;">
            <asp:Label ID="lblindex1" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblindex2" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblindex3" runat="server" Text=""></asp:Label>
        </div>
        <%--question div 1--%>
        <div style="padding-top: 10px; padding-left: 30px; width: 600px; height: 47px; margin: 0px 0 0 30px;
            font-size: 18px;">
            <asp:Label ID="lbl_displayques" runat="server" Text=""></asp:Label>
        </div>
        <%--answer div 1--%>
        <div style="clear: both; width: 600px; height: 100px; padding: 0px 0px 0px 30px;
            margin: 3px 0 0 58px; font-size: 14px;">
            <asp:RadioButtonList ID="rbtoptions" runat="server" OnSelectedIndexChanged="rbtoptions_SelectedIndexChanged">
            </asp:RadioButtonList>
        </div>
        <%-- time- limit--%>
        <div id="showtime" style="clear: both; width: 600px; height: 18px; padding: 10px 0px 0px 30px;
            text-align: right; margin: 10px 0 0 30px; font-size: 15px;">
            
        </div>
        <%-- answer- display--%>
        <div style="clear: both; width: 600px; height: 30px; padding: 10px 0px 0px 30px;
            margin: 10px 0 0 30px; border: 1px solid #dadada; font-size: 15px; background-color: #F7F7F2;
            color: #336699;">
            <asp:Label runat="server" ID="lblMsg" Text=""></asp:Label>
            <asp:Label runat="server" ID="lblMsg2" Text=""></asp:Label>
        </div>
        <br />
        <%-- buttons--%>
        <div style="clear: both; width: 599px; height: 50px; margin: 0 0 0 30px; padding: 0px 0px 0px 30px;">
            <div style="float: left; width: 150px; height: 40px;">
                <asp:ImageButton ID="btnAnswer" runat="server" ImageUrl="~/Images/img_butn_ans.png"
                    OnClick="btnAnswer_Click" />
            </div>
            <div style="float: left; width: 150px; height: 40px;">
                <asp:ImageButton ID="btnNext" runat="server" ImageUrl="~/Images/img_butn_next.png"
                    OnClick="btnNext_Click" />
            </div>
            <div style="float: left; width: 150px; height: 40px;">
                <asp:ImageButton ID="btnQuit" runat="server" ImageUrl="~/Images/img_butn_quit.png"
                    OnClientClick="return quit();" OnClick="btnQuit_Click" />
            </div>
        </div>
    </div>
    <%--content2--%>
    <div  id="content2new">
        <%--hiddenfields and extra label area--%>
        <asp:HiddenField ID="hfCurQuestion" runat="server" Value="0" />
        <asp:HiddenField ID="hfmarks" runat="server" Value="0" />
        <asp:HiddenField ID="Hfanswers" runat="server" Value="0" />
        <asp:HiddenField ID="Hfcorrect" runat="server" Value="0" />
        <asp:HiddenField ID="Hfincorrect" runat="server" Value="0" />
        <asp:HiddenField ID="Hfskip" runat="server" Value="0" />
        <asp:HiddenField ID="hfa" runat="server" Value="0" />
        <asp:HiddenField ID="hfb" runat="server" Value="0" />
        <asp:HiddenField ID="hfleft" runat="server" Value="4" />
        <asp:Label ID="Lblxmlfind" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblselected" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblanswer" runat="server" Text=""></asp:Label>
        <asp:HiddenField ID="hfCount" runat="server"/>
        <asp:HiddenField ID="hfSec" runat="server"  />
        <asp:HiddenField ID="hfMints" runat="server"  />
    </div>
    <%--footer--%>
    <div id="footer">
        <div style="clear: both; float: left; width: 330px; height: 30px; margin: 10px 0 0 30px;
            font-size: 14px;">
            <div style="float: left; width: 100px; height: 30px;">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick='return showinstructions();'>Instructions</asp:LinkButton>
            </div>
        </div>
       <div style="float:right; width:200px; height:30px; margin: 5px 14px 0 0px ; text-align:right;"><asp:Label ID="lbldate" runat="server" Text=""></asp:Label>&nbsp;&nbsp;<div style ="font-weight:bold; margin:2px 0 0 0;">Kush Productions</div>
                     </div> 
    </div>
    </form>
</body>
</html>
