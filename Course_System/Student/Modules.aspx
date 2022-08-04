<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Modules.aspx.cs" Inherits="Course_System.Student.Modules" %>
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
             height:10rem;
        }
        .desc
        {
             margin-right:4rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainbody">
        <div class="" >
              <div class="heading p-5" style="background-color:#1c1d1f;color:azure">
                   <h2 ><b> <asp:Label ID="lbltitle" runat="server"></asp:Label> </b></h2>
                   <h5 style="color:lavender" class="desc"> <asp:Label ID="lblmodule" runat="server"></asp:Label> </h5>
               </div>

                <div class="px-md-4 px-sm-2">
                    <div class="video pt-5" align="center">
                        <!-- <img class="img-fluid" src="../Images/Video-dummy.png" /> -->
                         <iframe 
                             id="iframe"
                             width = "630" 
                             height = "300"                              
                             frameborder  ="0" 
                             allowfullscreen="true"
                             title="Machine Learning"
                             runat="server"
                             >\
                          </iframe>
                    </div>
                    <div class="p-4">
                        <h3 style="color:rebeccapurple"><b>Description</b></h3>
                        <p>
                            <h5><asp:Label ID="lbldesc" runat="server"></asp:Label></h5>
                        </p>
                    </div>
                 </div>

        </div>
    </div>
</asp:Content>
