using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_load(object sender, EventArgs e)
    {
        //date
        try
        {

            if (Session["Signinname"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else
            {
               lblheadername.Text = Convert.ToString(Session["Signinname"]);

            }
            DateTime dt;

            dt = DateTime.Now;

            lbldate.Text = dt.ToLongDateString();

            int curQuestion = Convert.ToInt16(hfCurQuestion.Value);


            lblcat.Text = Request.QueryString["category"];
            Session["cat_session"] = lblcat.Text;
            lbllev.Text = Request.QueryString["level"];
            Session["level_session"] = lbllev.Text;
            

            if (!IsPostBack)
            {
                ShowQuestion(curQuestion);
                    String timework = Convert.ToString(Session["Timer"]);
                    int ax = Convert.ToInt16(timework);
                    hfCount.Value = timework; //Total time count in seconds
                    hfMints.Value = ((ax / 60) - 1).ToString(); //Calculating time in minutes
                    hfSec.Value = "60";  //Initialising seconds to 60
           
            }
            Lblxmlfind.Visible = false;
            lblselected.Visible = false;
            lblanswer.Visible = false;

            
        }
        catch(Exception ex)
        {
            lblindex1.BackColor = System.Drawing.Color.Yellow;
            lblindex1.Text = ex.Message;
        }
    }


    protected void btnAnswer_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            int marks = Convert.ToInt16(hfmarks.Value);
            int answers = Convert.ToInt16(Hfanswers.Value);
            int incorrect = Convert.ToInt16(Hfincorrect.Value);
            int correct = Convert.ToInt16(Hfcorrect.Value);

            btnAnswer.Enabled = false;

            string ch;
            ch = lblselected.Text;
            switch (ch)
            {
                case "1":

                    if (lblselected.Text == lblanswer.Text)
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        lblMsg.Text = "Correct Answer";
                        marks = marks + 5;
                        correct = correct + 1;
                        answers = answers + 1;

                    }
                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Wrong Answer" + "&nbsp;&nbsp;&nbsp;&nbsp;";
                        lblMsg2.Text = "Correct Answer is :" + "&nbsp;" + lblanswer.Text;
                        marks = marks - 1;
                        incorrect = incorrect + 1;
                        answers = answers + 1;

                    }
                    break;

                case "2":

                    if (lblselected.Text == lblanswer.Text)
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        lblMsg.Text = "Correct Answer";
                        marks = marks + 5;
                        correct = correct + 1;
                        answers = answers + 1;

                    }
                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Wrong Answer" + "&nbsp;&nbsp;&nbsp;&nbsp;";
                        lblMsg2.Text = "Correct Answer is :" + "&nbsp;" + lblanswer.Text;
                        marks = marks - 1;
                        incorrect = incorrect + 1;
                        answers = answers + 1;

                    }
                    break;

                case "3":

                    if (lblselected.Text == lblanswer.Text)
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        lblMsg.Text = "Correct Answer";
                        marks = marks + 5;
                        correct = correct + 1;
                        answers = answers + 1;

                    }
                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Wrong Answer" + "&nbsp;&nbsp;&nbsp;&nbsp;";
                        lblMsg2.Text = "Correct Answer is :" + "&nbsp;" + lblanswer.Text;
                        marks = marks - 1;
                        incorrect = incorrect + 1;
                        answers = answers + 1;

                    }
                    break;

                case "4":

                    if (lblselected.Text == lblanswer.Text)
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        lblMsg.Text = "Correct Answer";
                        marks = marks + 5;
                        correct = correct + 1;
                        answers = answers + 1;

                    }
                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Wrong Answer" + "&nbsp;&nbsp;&nbsp;&nbsp;";
                        lblMsg2.Text = "Correct Answer is :" + "&nbsp;" + lblanswer.Text;
                        marks = marks - 1;
                        incorrect = incorrect + 1;
                        answers = answers + 1;

                    }
                    break;

                default:
                    lblMsg.ForeColor = System.Drawing.ColorTranslator.FromHtml("#336699");
                    lblMsg.Text = "Select the Options or for skipping the question click on Next";
                    btnAnswer.Enabled = true;
                    break;
            }



            //storing values
            Hfanswers.Value = answers.ToString();
            hfmarks.Value = marks.ToString();
            Hfincorrect.Value = incorrect.ToString();
            Hfcorrect.Value = correct.ToString();

        }
        catch (Exception ex)
        {
            lblindex2.BackColor = System.Drawing.Color.Yellow;
            lblindex2.Text = ex.Message;
        }

 

    }
   

    protected void btnNext_Click(object sender, ImageClickEventArgs e)
    {
        try{

        int curQuestion = Convert.ToInt16(hfCurQuestion.Value);
        int left = Convert.ToInt16(hfleft.Value);
        

        curQuestion = curQuestion + 1;
        ShowQuestion(curQuestion);

        btnAnswer.Enabled = true;
        lblMsg.Text = "";
        lblMsg2.Text = "";
        lblselected.Text = "";
        

        //storing the values
        hfCurQuestion.Value = curQuestion.ToString();

        //question left
        left = left - 1;
        hfleft.Value = left.ToString();
        Lblleft.Text = hfleft.Value;
        }
        catch (Exception ex)
        {
            lblindex3.BackColor = System.Drawing.Color.Yellow;
            lblindex3.Text = ex.Message;
        }
       
    }

   

    void ShowQuestion(int QNo)
    {
        
        try{

        Lblxmlfind.Text = Request.QueryString["xmlfilename"];
        
        XDocument xdoc = XDocument.Load(Server.MapPath("~/" + Lblxmlfind.Text));

        // Is it last question
        int TotalQuestions = xdoc.Descendants("Question").Count();
        if (QNo >= TotalQuestions)
        {
            int curQuestion = Convert.ToInt16(hfCurQuestion.Value);
            int incorrect = Convert.ToInt16(Hfincorrect.Value);
            int correct = Convert.ToInt16(Hfcorrect.Value);
            int skip = Convert.ToInt16(Hfskip.Value);

            // To enter total no: of questions in result page
            curQuestion = curQuestion + 1;

            //skipping calculations
            skip = 5 - (correct + incorrect);

            // store values 
            hfCurQuestion.Value = curQuestion.ToString();
            Hfskip.Value = skip.ToString();

            //sending data to result page
            string url = string.Format("Result.aspx?attemptedquestions={0}&attemptedanswers={1}&correctanswers={2}&incorrectanswers={3}&skipquestions={4}&totalmarks={5}&category={6}&level={7}"
                , hfCurQuestion.Value, Hfanswers.Value, Hfcorrect.Value, Hfincorrect.Value, Hfskip.Value, hfmarks.Value,  lblcat.Text, lbllev.Text);
            Response.Redirect(url);
        }

        //Run query
        var Question = xdoc.Descendants("Question").ElementAt(QNo);

        //Display question

        lbl_displayques.Text = Question.Element("Q").Value;

        //Display answer

        lblanswer.Text = Question.Element("Answer").Value;

       
        // clear radio buttons options
        rbtoptions.Items.Clear();
        foreach (var option in Question.Descendants("Option"))
        {
            ListItem itm = new ListItem();
            itm.Text = option.Value;
            itm.Value = (rbtoptions.Items.Count + 1).ToString();
            rbtoptions.Items.Add(itm);
        }

        }
        catch (Exception ex)
        {
            lblindex3.BackColor = System.Drawing.Color.Yellow;
            lblindex3.Text = ex.Message;
        }

        
    }
   protected void rbtoptions_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        lblselected.Text = rbtoptions.SelectedValue;
        
    }
    protected void btnQuit_Click(object sender, ImageClickEventArgs e)
    {
        // sending data to result page
        string url = string.Format("Result.aspx?attemptedquestions={0}&attemptedanswers={1}&correctanswers={2}&incorrectanswers={3}&skipquestions={4}&totalmarks={5}&category={6}&level={7}"
                , hfCurQuestion.Value, Hfanswers.Value, Hfcorrect.Value, Hfincorrect.Value, Hfskip.Value, hfmarks.Value, lblcat.Text, lbllev.Text);
        Response.Redirect(url);
    }



    
}
    