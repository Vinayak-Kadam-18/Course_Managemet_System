<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="EnrolledCourses.aspx.cs" Inherits="Course_System.Student.EnrolledCourses" %>
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

    .card{
        transition: transform .3s ease-out;
    }
    .card:hover
    {
        box-shadow: 2px 2px 15px #bebebe;
        transform: translate(0, -5px);
    }

        @media only screen and (max-width: 760px) 
        {
            
           .mainbody{
               padding-left:2%;
               margin-left:3rem;
               
               
           }
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mainbody m-5">
           <div align="center">
                <h1 style="color:rebeccapurple"><b>Enrolled Courses</b></h1>
                <h5 style="color:dimgrey">Here's List Of Courses you are Enrolled For. Happy Learning!</h5>
            </div>


            <div class="mt-5 mx-4">
                <div class="row">
                    <div class="col-md-4">
                        <asp:Repeater ID="reptEnroll" runat="server">
                            <ItemTemplate>
                                 <a target="_blank" href="Courses.aspx?id=<%#Eval("Course_Id") %>" style="text-decoration:none;color:inherit" />
                                  <div class="card">
                                     <div class="card-img">
                                         <img class="img-fluid" src="../Images/Python.jpg" style="width:100%"/>
                                     </div>
                                      <div class="card-body">
                                          <h6><b><asp:Label ID="lblTitle" runat="server" Text=<%#Eval("Title") %>></asp:Label></b></h6>
                                          <p style="color:rebeccapurple;padding-left:0px"> <asp:Label ID="lblProf" runat="server" Text=<%#Eval("Created_By") %>></asp:Label></p>
                                     
                                           <i class='fas fa-clock' style="color:dimgray"></i>&nbsp;  <asp:Label ID="lblDuration" runat="server" Text=<%#Eval("Duration") %>></asp:Label></p>
                                      </div>
                                 </div></a>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </div>
                </div>
               
            </div>
    </div>
  

</asp:Content>
