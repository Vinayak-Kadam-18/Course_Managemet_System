<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Course_System.Teacher.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    body{
        overflow-x:hidden;
          text-align: justify;
         text-justify: inter-word;
         width:100%;
         
    }
    .mainbody
    {
       padding-left:3%;
       padding-right:3%;
    }

        @media only screen and (max-width: 760px) 
        {
            .banner{
                height:8rem;
            }
           .mainbody{
               padding-left:2%;
               margin-left:3rem;
               
               
           }
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <img src="../Images/banner.png" style="width:100%" class="banner"/>
    <div class="mainbody"  style="font-size:1.1rem;margin-top:50px">
        <h1><b>PGP in Data Science and Machine Learning</b></h1>
        <div align="center">
          <img src="../Images/cover1.jpg" class="img-fluid p-4" />
        </div>
        <p class="pt-3" >The demand for skilled data science professionals in industry, academia, and government is rapidly growing and it’s the right time to enter in amazing world of “Data Science and Machine Learning”. Businesses are changing rapidly and knowledge driven decision making is crucial to gain competitive advantage. Data Science technologies are acting as an enabler for better decision making and helping in the overall growth of organizations.

Data Science is amalgamation of statistics, computer science and business domain. It deals with in depth analysis of data to gain insights and build wisdom with the help of algorithms and methods. It involves data cleaning, pre-processing, exploratory data analysis and understanding of data. Data Science makes use of machine learning to build and apply various models.

Most of the firms in India and abroad are using Data Science and Machine Learning technologies for better analysis and predictions. There is demand for skilled professional with understanding of Machine Learning algorithms to manage Data Science Projects. Any Graduate be it from engineering, sales or operations background with proficiencies in data analysis and machine learning is suitable for roles such as Data Analyst, Data Administrator, ML Engineer, Data Scientist, Data Architect.

Our Post Graduate Program in Data Science and Machine Learning follows a project based, practical driven innovative approach to teach cutting edge technologies and methods required in today’s competitive job market.

After successful completion of the course, student will be conferred with a Dual Certification:

PGP Certification from MET Institute of Software Development and Research
Industry Honour Program Certification from TCS iON.</p>

        <h2><b class="pt-5">Programme Highlights</b></h2>
        <hr />
        <b>Eligibility</b>
        <ul>
            <li>Any BE/B Com/B Sc IT/ BCA / Science Graduate
            <li>Any Post Graduate/ Management Graduate</li>
            <li>Working Professionals</li>
        </ul>
        <hr />
        <b class="pt-5">Learning Objectives</b>
        
        <p>We Provide a platform to gain an in depth understanding data science technologies and equip learners with relevant skills required to work in industry</p>
        <ul>
            <li>Any BE/B Com/B Sc IT/ BCA / Science Graduate</li>
            <li>Understand and Implement Life Cycle of a Data Science Project</li>
            <li>Foundations of Python and R for Data Science</li>
            <li>Learn and Apply Statistics to solve Data Science problems</li>
            <li>Use Machine Learning Techniques to Solve Real World Problems</li>
            <li>Natural Language Processing and Big Data Analytics</li>
            <li>Design Computer Vision Applications</li>
            <li>Industry Projects and Industry Internships
</li>
        </ul>
    </div>
    
   
</asp:Content>
