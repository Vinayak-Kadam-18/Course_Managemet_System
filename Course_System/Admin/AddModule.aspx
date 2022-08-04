<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddModule.aspx.cs" Inherits="Course_System.Admin.AddModuleaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script type="text/javascript">
         function module() {
           swal({
               title: 'Module Added Sucessfully',               
               icon: 'success',

           }).then((value) => { window.location = 'ViewCourse.aspx'; })
         }

         function Notregistered() {
             swal({
                 title: 'Student Email Exists',
                 icon: 'error'
             })
         }


     </script>
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
      <div class="mainbody mt-4">
        <h1 align="center" style="color:rebeccapurple"><b>Create New Module</b></h1>
        <h5 class="pt-2 px-md-5" align="center" style="color:dimgrey">Please Provide The Module Details To Create The New Module.</h5>
          <div class="px-md-5 px-4 pt-4">
                <h5 class="pt-3"><b>Module Title</b></h5>
                <asp:TextBox  ID="txttitle" runat="server" class="form-control shadow-sm px-4 w-75" placeholder="Eg. Basics of Java" style="border-radius:5px;height:2.8rem"></asp:TextBox>
       
                <h5 class="pt-3"><b>Description</b></h5>
                <asp:TextBox  ID="txtdesc" TextMode="MultiLine" Rows="10" runat="server" class="form-control shadow-sm px-4 w-75" placeholder="Content of the Module" style="border-radius:5px   "></asp:TextBox>

                <h5 class="pt-3"><b>Video URL</b></h5>
                <asp:FileUpload  ID="FileUpload1" runat="server" class="form-control shadow-sm p-2 px-4 w-75"  style="border-radius:5px;height:2.8rem"></asp:FileUpload>
              <asp:Label ID="lblerror" runat="server"></asp:Label>
         
                <div align="center">
                    <asp:Button ID="btnmodule" runat="server" Text="Create" class="btn btn-success px-5 mt-5" OnClick="btnmodule_Click"  />
                </div>
            </div>
        
    </div>
</asp:Content>
