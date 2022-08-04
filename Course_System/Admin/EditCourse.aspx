<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="Course_System.Admin.EditCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

         body{
        overflow-x:hidden;
          text-align: justify;
         text-justify: inter-word;
         width:100%;
         
    }
            .heading
            {
                height:15rem;
            }
            .desc
            {
                margin-right:4rem;
            }
        @media only screen and (max-width: 760px) 
        {

           .mainbody{
               padding-left:2%;
               margin-left:3rem;
               overflow-x:hidden
               
               
           }

           .heading
           {
               margin-left:-1rem;
               height:18rem;
           }
           .desc
            {
                margin-right:1rem;
            }
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainbody">
          <div class="" >
              <div class="heading p-5" style="background-color:#1c1d1f;color:azure">
                   <h2 ><b> <asp:Label ID="lbltitle" runat="server"></asp:Label> </b></h2>
                   <h5 style="color:lavender" class="desc"> <asp:Label ID="lbldesc" runat="server"></asp:Label> </h5>
                   <h6 class="mt-3" style="color:lavender">Created By:  <asp:Label style="color:violet" ID="lblcretedby" runat="server"></asp:Label> </h6>
                   <i class='fas fa-clock' style="color:lavender"></i>&nbsp;&nbsp;<asp:Label ID="lblduration" runat="server"></asp:Label>

              </div>
              <div class="px-md-4 px-sm-2">
                  <div class="p-4">
                    <h3 style="color:rebeccapurple"><b>What you'll Learn</b></h3>
                    <h5>Create their own Python Programs, Become an experienced Python Programmer, Parse the Web and Create their own Games</h5>
                   </div>

                  <div class="p-4">
                      <h3 style="color:rebeccapurple"><b>Course Content</b></h3>
                      <br />
                      <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
                              <a href="https://www.google.com" target="_blank">
                               <div class="card card-body p-2 w-75" style="background-color:whitesmoke">
                                     <div class="d-flex align-items-center align-content-center">
                                     <i class="fas fa-angle-double-right m-1" style="color:darkgrey"></i><h6 style="color:#1c1d1f" class="m-1"><b><asp:Label ID="lbl"  runat="server" Text='<%#Eval("Title") %>'></asp:Label></b></h6>
                                </div>
                               </div>
                            </a>
                          </ItemTemplate>


                      </asp:Repeater>


                  </div>

                  <div class="p-4">
                       <h3 style="color:rebeccapurple"><b>Assignments</b></h3>
                  </div>
              </div>

            </div>
        </div>
                  
            
</asp:Content>
