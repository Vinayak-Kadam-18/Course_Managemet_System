<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="Course_System.Teacher.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

         .mainbody {
             overflow-x: hidden;
         }

        @media only screen and (max-width: 760px) 
        {

           .mainbody{
               padding-left:2%;
               margin-left:3rem;
               overflow-x:hidden
               
               
           }
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="mainbody">
            
              
                <div class="row mt-4 px-md-4 px-sm-4" >
                    <h1 class="pt-2" align="center" style="color:rebeccapurple"><b>Create New Course</b></h1>
                    <h5 class="pt-2 px-md-5" align="center" style="color:dimgrey">Please Provide The Course Details To Create The New Course.</h5>
                    <div class="px-md-5 px-4 pt-4 ">
                        <div class="col-md-10  col-sm-12 px-md-4 px-sm-3">   
                           <div class="mt-3">
                               <h5 class=""><b>Title</b></h5>
                               <asp:TextBox  ID="txttitle" runat="server" class="form-control shadow-sm  px-4" placeholder="Enter Course Title" style="border-radius:5px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valtitle" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txttitle" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                           <div class="mt-2">
                             <h5 class=""><b>Description</b></h5>
                               <asp:TextBox  ID="txtdesc" TextMode="MultiLine" Rows="10" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Summary of the course" style="border-radius:5px;height:12.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valdesc" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtdesc" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mt-2">
                                <h5 class=""><b>Category</b></h5>
                               <asp:TextBox  ID="txtcategory" runat="server" class="form-control shadow-sm px-4 " placeholder="Eg: Computer Science" style="border-radius:5px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valcat" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtcategory" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                             </div>
                               <h5 class="pt-2"><b>Duration</b></h5>
                                <asp:DropDownList ID="drpduration" runat="server" class="form-select shadow-sm px-4 "  style="border-radius:5px;height:2.8rem">
                                    <asp:ListItem disabled="disabled" Selected="True">Select duration of your Course</asp:ListItem>
                                    <asp:ListItem Value="30 Days">< 1 Month</asp:ListItem>
                                    <asp:ListItem Value="1-3 Monthss">1-3 Months</asp:ListItem>
                                    <asp:ListItem Value="3-7 Months">< 3-7 Months</asp:ListItem>
                                    <asp:ListItem Value="7-12 Months">7-12 Months</asp:ListItem>
                                </asp:DropDownList>

                                <h5 class="mt-3"><b>Proffesor</b></h5>
                                <asp:DropDownList ID="drpteacher" runat="server" class="form-select shadow-sm px-4 "  style="border-radius:5px;height:2.8rem">
                                </asp:DropDownList>


                        </div>
                       

        <div class="m-5" align="center">
        <asp:Button  ID="btncourse" runat="server" Text="Create" class="btn btn-success px-5 mt-4" OnClick="btncourse_Click" />
        </div>
    </div>
   </div>
        
    </div>
</asp:Content>
