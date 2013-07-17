<%@ Page Title="Result" Language="C#" MasterPageFile="~/Master-head-left-foot.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
            <%--Page error label--%>
           <div style=" text-align:center; height:25px;">
               <asp:Label ID="lblresult1" runat="server" Text=""></asp:Label>
               </div>

           <%--    mid start--%>
           <div style="float:left;">
           <div style="color:#336699;  padding:0px 0 0 30px; font-size:30px;">Here's Your Result</div>
           </div>
                <div style="clear:both; float:left; width:460px; height:330px; margin:10px 0 0 100px;">
           <%--left--%>
            <div id="contentmid_left">
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Username</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Category</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Level</div>
                <div class="marks_div_left" style="padding-top:16px; font-weight:bold; font-size:16px;">Questions</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Total</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Attempted</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Correct</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Incorrect</div>
                <div class="marks_div_left" style="padding:6px  0 0 10px; width:150px;">Skipped </div>
                <div class="marks_div_left" style="padding-top:16px; font-weight:bold; font-size:16px;">Total Marks</div>
                
            </div>

           <%--Right--%>
            <div id="contentmid_right">
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblname" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lbcategory" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lblevel" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:16px;"></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lbltotalquestions" runat="server" Text="5"></asp:Label></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lblattemptedanswers" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lblcorrectanswers" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lblincorrectanswers" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:6px;">:&nbsp;&nbsp; <asp:Label ID="lblskipquestions" runat="server" Text=""></asp:Label></div>
                <div class="marks_div_right" style="padding-top:16px;">:&nbsp;&nbsp; <asp:Label ID="lbltotalmarks" runat="server" Text=""></asp:Label></div>
               
            </div>

            <%--result show--%>
            <div id="result_div"><asp:Label ID="lblresg" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblresr" runat="server" Text=""></asp:Label></div>


            <div style="clear:both; height:20px; font-size:12px; width:400px; margin:20px 0 0 0 ; ">
            <div class="listos" style="float:left; width:200px; height:20px;"><a href="Reports.aspx">Click Here For Previous Results</a></div>
            <div class="listos" style="float:left; width:200px; height:20px;"><a href="Feedback.aspx">Click Here For Feedback</a></div>
            </div>

            </div>

            
           
        

        
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                                <asp:HiddenField ID="Resultcheck" runat="server" />
</asp:Content>


