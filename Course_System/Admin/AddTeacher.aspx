<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="Course_System.Admin.AddTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script type="text/javascript">
         function registered() {
             swal({
                 title: 'Teacher Added Sucessfully',
                 icon: 'success'
             }).then((value) => { window.location = 'AddTeacher.aspx'; })
         }

         function Notregistered() {
             swal({
                 title: 'Teacher Email Exists',
                 icon: 'error'
             })
         }


     </script>
    <style type="text/css">
        .row{
            overflow-y:hidden;
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
            
              
                <div class="mt-4 px-md-5 px-sm-4" align="center">
                    <h2 class="pt-2" style="letter-spacing:1px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"><b>Register</b></h2>
                    <h5 class="pt-2 px-md-5" style="color:dimgrey">Please Enter Correct information and Proceed To Create an Account.</h5>
                    <div class="row px-md-5 px-4 pt-5 ">
                        <h3 align="left"><b>Professor Details</b></h3>
                        <div class="col-md-6 px-md-4 px-sm-3">   
                           <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtfname" runat="server" class="form-control shadow-sm px-4" placeholder="Enter First Name" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valfname" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtfname" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                           <div class="d-flex mt-5">
                               <asp:TextBox  ID="txtemail" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Email" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valemail" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtemail" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                            </div>
                             <asp:RegularExpressionValidator ID="regemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" Font-Size="small"  Text="Please Enter Valid Email Address" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                            <div class="d-flex mt-4">
                              <asp:DropDownList ID="drpdwndept" runat="server" class="form-select shadow-sm px-4 dropdown w-100" style="border-radius:25px;height:2.8rem">
                                  <asp:ListItem class="dropdown-item" Selected="True" disabled="disabled">Please Select Department</asp:ListItem>
                                  <asp:ListItem class="dropdown-item" Value="M.C.A">M.C.A</asp:ListItem>
                                  <asp:ListItem class="dropdown-item" Value="M.M.S">M.M.S</asp:ListItem>
                                  <asp:ListItem class="dropdown-item" Value="PGDM">PGDM</asp:ListItem>
                                  <asp:ListItem class="dropdown-item" Value="PGDAC">PGDAC</asp:ListItem>
                              </asp:DropDownList>

                                <asp:RequiredFieldValidator class="pt-2" ID="valdob" runat="server" ErrorMessage="*" Text="*" ControlToValidate="drpdwndept" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                             </div>

                        </div>
                        <div class="col-md-6 px-md-4 px-sm-3">
                            <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtlname" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Last Name" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="vallname" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtlname" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                            <div class="d-flex mt-5">
                               <asp:TextBox  ID="txtcontact" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Mobile Number" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valmob" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtcontact" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                             <asp:RegularExpressionValidator ID="regcontact" runat="server" ControlToValidate="txtcontact" ErrorMessage="Invalid contact" Font-Size="small" ForeColor="Red" Text="Please Enter Valid Mobile Number" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                           <div class="d-flex mt-4">
                                <asp:DropDownList ID="drpdwnfaculty" runat="server" class="form-select shadow-sm px-4 dropdown w-100" style="border-radius:25px;height:2.8rem">
                                      <asp:ListItem class="dropdown-item" Selected="True" disabled="disabled">Please Select Faculty</asp:ListItem>
                                      <asp:ListItem class="dropdown-item" Value="Computer Science">Computer Science</asp:ListItem>
                                      <asp:ListItem class="dropdown-item" Value="Information Technology">Information Technology</asp:ListItem>
                                      <asp:ListItem class="dropdown-item" Value="Pharmacy">Pharmacy</asp:ListItem>
                                  </asp:DropDownList> 
                                <asp:RequiredFieldValidator class="pt-2" ID="valaddress" runat="server" ErrorMessage="*" Text="*" ControlToValidate="drpdwnfaculty" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                    </div>

                    <asp:Button class="btn btn-success  w-25 mt-5" ID="btnregister" runat="server" Text="Register" Font-Bold="True" ForeColor="White" style="border-radius:5px" OnClick="btnregister_Click" />
                    

                 <!--    <div style="position:relative">
                    <footer class="px-4 mt-4">
                         <div class="d-flex justify-content-between" style="color:dimgrey">
                             <div>
                                  <p style="font-weight:500">Copyright © 2022</p>
                             </div>
                             <div style="font-weight:500">
                                Terms of Service  | Privacy Center  |  Adchoices  |  Security
                             </div>
                         </div>

                    </footer>
        </div> -->
                </div>

            </div>
         
    
        

</asp:Content>
