<%@ Page Title="Home" Language="C#" MasterPageFile="~/Master-head-left-foot.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function showinstructions() {

        window.open("Instructions.html", 'Instructions', "width=750, height=400, resizable=yes");
        return false;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          

           <%--Page error label--%>
           <div style=" text-align:center; height:25px;">
               <asp:Label ID="lblhomepage1" runat="server" Text=""></asp:Label>
           </div>

         <%--  mid start--%>
                    <div id="mainlists">
                        <%--category--%>
                         <asp:Panel runat="server" ID = "P1">
                           <div id="size1">
                            <div class="level1">
                                <div class="level1" style="width:130px; font-weight:bold;">Choose Category
                                </div>
                                    
                            </div>
                  
                             <div class="level2" style= "padding-top:4px; height:48px; "> 
                                 <asp:DropDownList ID="rbt1" runat="server">
                                
                                    <asp:ListItem Value="1">Asp.Net</asp:ListItem>
                                    <asp:ListItem Value="2">C/C-plus</asp:ListItem>
                                    <asp:ListItem Value="3">Networking</asp:ListItem>
                                    <asp:ListItem Value="4">Php</asp:ListItem>
                               </asp:DropDownList>
                             </div>
                        </div>
                        </asp:Panel>
                    
                        <%--level--%>
                        <div id="size2">
                                <asp:Panel runat="server" ID = "P2">
                                    <div class="level1">
                                        <div class="level1" style="width:130px; font-weight:bold;">Choose Level
                                        </div>
                                               
                                    </div>
                  
                                     <div class="level2">
                                        <asp:RadioButtonList ID="rbt2" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">Beginner</asp:ListItem>
                                            <asp:ListItem Value="2">Intermediate</asp:ListItem>
                                            <asp:ListItem Value="3">Professional</asp:ListItem>
                                        </asp:RadioButtonList>
                                     </div>
                  
                                </asp:Panel>
                            </div>
                   
                       
                       </div> 
                       <div style="width:550px; height:50px; clear:both; Margin:0 0 0 40px;">
                       <div style="Float:left; width:150px; height:50px; color:#336699; font-size:15px; font-weight:bold;">Exam Time</div>
                       <div style="Float:left; width:400px; height:50px; font-size:13px;">
                           <asp:DropDownList ID="rbttimer" runat="server">
                               <asp:ListItem Value="1">1</asp:ListItem>
                               <asp:ListItem Value="2">2</asp:ListItem>
                               <asp:ListItem Value="3">3</asp:ListItem>
                               <asp:ListItem Value="4">4</asp:ListItem>
                               <asp:ListItem Value="5">5</asp:ListItem>
                               <asp:ListItem Value="6">6</asp:ListItem>
                               <asp:ListItem Value="7">7</asp:ListItem>
                               <asp:ListItem Value="8">8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem Value="10">10</asp:ListItem>
                           </asp:DropDownList> minutes
                       </div>
                       </div>
                        
                        
                        <%--  labels--%>
                        <div style="clear:both; width:468px; height:40px; margin:10px 0 0 40px;">
                               <div style="float:left; color:Red; font-size:18px;"><asp:Label ID="Errorlabel" runat="server" Text=""></asp:Label></div>
                               

                                <%--button go --%>

                                <div style="float:right;">
                                <asp:ImageButton ID="btn_go" runat="server" ImageUrl="~/Images/img_butn_go.png" 
                                    onclick="btn_go_Click" />

                                </div>
                                
                        </div>
                        <br />
                      <%--instructions--%>
                        <div class="ins_reply" style=" clear:both; margin: 10px 0 0 40px; font-size:12px;">Note :- Before Commencing the test read the&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClientClick='return showinstructions();'>Instructions</asp:LinkButton>&nbsp;carefully.
                        </div>
                       
                    
            
             
              
             
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                                <asp:HiddenField ID="hfcategory" runat="server" Value="1" />
                                <asp:HiddenField ID="hflevel" runat="server" Value="1" />
                                <asp:Label ID="lblcategory" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lbllevel" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lblxml" runat="server" Text=""></asp:Label>
</asp:Content>

 

