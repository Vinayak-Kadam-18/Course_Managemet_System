<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Course_System.Admin.Add_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script type="text/javascript">
         function registered() {
           swal({
               title: 'Student Added Sucessfully',               
               icon: 'success'
           }).then((value) => { window.location = 'AddStudent.aspx'; })
         }

         function Notregistered() {
             swal({
                 title: 'Student Email Exists',
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
                    <div class="row px-md-5 px-4 pt-4 ">
                        <h3 align="left"><b>Personal Details</b></h3>
                        <div class="col-md-6 px-md-4 px-sm-3">   
                           <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtfname" runat="server" class="form-control shadow-sm px-4" placeholder="Enter First Name" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valfname" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtfname" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                           <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtemail" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Email" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valemail" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtemail" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                            </div>
                             <asp:RegularExpressionValidator ID="regemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" Font-Size="small"  Text="Please Enter Valid Email Address" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                            <div class="d-flex">
                               <asp:TextBox TextMode="Date"  ID="txtdob" runat="server" class="form-control shadow-sm px-4" placeholder="Enter DOB" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valdob" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtdob" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                             </div>

                        </div>
                        <div class="col-md-6 px-md-4 px-sm-3">
                            <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtlname" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Last Name" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="vallname" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtlname" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                            <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtcontact" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Mobile Number" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valmob" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtcontact" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                             <asp:RegularExpressionValidator ID="regcontact" runat="server" ControlToValidate="txtcontact" ErrorMessage="Invalid contact" Font-Size="small" ForeColor="Red" Text="Please Enter Valid Mobile Number" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                           <div class="d-flex">
                               <asp:TextBox  ID="txtaddress" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Address" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valaddress" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtaddress" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>
                        </div>
                    </div>

                    <div class="row px-md-5 px-4 pt-5 ">
                        <h3 align="left"><b>Qualification Details</b></h3>
                        <div class="col-md-6 px-md-4 px-sm-3">                                
                           <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtssc" runat="server" class="form-control shadow-sm px-4" placeholder="Enter 10th Percentage" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valssc" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtssc" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>                              
                             <asp:RegularExpressionValidator ID="regssc" runat="server" ControlToValidate="txtssc" ErrorMessage="Invalid Percentage" Font-Size="small"  Text="Please Use correct Format" ForeColor="Red" ValidationExpression="^[1-9]{1}[0-9]?(?:\.\d{1,2})?$|^0\.\d{1,2}?$|100"></asp:RegularExpressionValidator>
                            <div class="d-flex">
                                <asp:TextBox  ID="txtgrad" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Graduation CGPA" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valgrad" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtgrad" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div> 
                            <asp:RegularExpressionValidator ID="reggrad" runat="server" ControlToValidate="txtgrad" ErrorMessage="Invalid Percentage" Font-Size="small"  Text="Please Use correct Format" ForeColor="Red" ValidationExpression="^[0-9]\.\d\d$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 px-md-4 px-sm-3">
                           <div class="d-flex mt-4">
                               <asp:TextBox  ID="txthsc" runat="server" class="form-control shadow-sm px-4" placeholder="Enter 12th Percentage" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valhsc" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txthsc" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                           </div>  
                            <asp:RegularExpressionValidator ID="reghsc" runat="server" ControlToValidate="txthsc" ErrorMessage="Invalid Percentage" Font-Size="small"  Text="Please Use correct Format" ForeColor="Red" ValidationExpression="^[1-9]{1}[0-9]?(?:\.\d{1,2})?$|^0\.\d{1,2}?$|100" style="float:left" class="px-2"></asp:RegularExpressionValidator>

                            <div class="d-flex mt-4">
                               <asp:TextBox  ID="txtmast" runat="server" class="form-control shadow-sm px-4" placeholder="Enter Current CGPA" style="border-radius:25px;height:2.8rem"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pt-2" ID="valmast" runat="server" ErrorMessage="*" Text="*" ControlToValidate="txtmast" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
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
