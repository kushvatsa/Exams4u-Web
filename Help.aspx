<%@ Page Title="" Language="C#" MasterPageFile="~/Master-head-left-foot.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:500px; width:738px;">
<div style="height:50px; color:#336699; font-size:25px; margin: 30px 0 0 30px;">Instructions For Online Test :-
</div>
<ul id="lists">
<li class="list11">Each Category consist of 3 levels namely : Beginner , Intermediate and Professional.</li>
<li class="list11">Each Level consist of 5 Questions.</li>
<li class="list11">Their is a time limitter , a user can set before the commencing 
    of examination and hence it cannot <br />be changed during the  exam.</li>
<li class="list11">Each Correct Answer the user will be granted with 5 marks </li>
<li class="list11">Each Incorrect Answer the user 1 mark will be deducted </li>
<li class="list11">Skipping the questions means their is no negative marking and the user automatically goes to the next question.</li>
<li class="list11">A user should get atleast 10 marks to pass the Exam </li>
<li class="list11">A user can also Quit the Exam between the Examination.</li>
<li class="list11">After clicking the Quit button. The user automatically sees his/her result on a result page</li>
<li class="list11">After attempting the all questions the user click the Next button and get his/her result.</li>
</ul>
</div>
</asp:Content>

