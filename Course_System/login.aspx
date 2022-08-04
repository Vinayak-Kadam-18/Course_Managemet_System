<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Course_System.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <meta content="width=device-width, initial-scale=1" name="viewport" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <script type="text/javascript">
       function error() {
           swal({
               title: 'Email not exist',
               text: 'Please check your email address and try again',
               icon: 'error'
           })
       }

       function otpinvalid() {
           swal({
               title: 'Invalid OTP',
               text: 'Please Check OTP and Try Again !',
               icon: 'warning'
           })
       }

       function otpexpired() {
           swal({
               title: 'OTP Expired',
               text: 'OTP is only valid for 3 minutes. Please click on resend OTP',
               icon: 'info'
           })
       }


   </script>
    <style type="text/css">
        body{
            background-color:#EBECF0;
        }
        .form-control{
               width:75%;
           }
        .signup{
            width:75%;
        }
        .buttn{
            width:75%;
        }
        .row{
            display:flex;
            justify-content:center;
            align-items:center;
            height:87vh;
            padding:0px 90px;
            padding-top:90px;
            margin-right:0px;
        }
         footer
         {
             margin-top:2.5rem;
         }
        @media only screen and (max-width: 768px){
           .form-control{
               width:100%;
           }
            .signup{
            width:100%;
        }
            .buttn{
            width:100%;
        }
            .row{
                padding:0px 30px
            }
            footer{
                padding-top:10px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


    <div class="container-fluid" >
    <div class="row">
    <!-- COL 1 -->
    <div class="col-md-7 col-sm-12">
        <h1 style="color:darkslategrey;font-family: 'Poppins', sans-serif; letter-spacing:2px"><b>Welcome to MET Learning Center</b></h1>
        <h4 style="color:dimgray">If you already have an account with us,<br /> please sign in below</h4>
        <asp:TextBox TextMode="Email"  ID="txtemail" runat="server" class="form-control shadow  px-4 mt-5" placeholder="Enter email address" style="border-radius:25px;height:3rem"></asp:TextBox>
        <asp:RequiredFieldValidator class="py-3" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <!-- OTP TEXTBOX -->
        <asp:Panel ID="Panel1" runat="server">
               <p style="color:green"><b>OTP has been sent to you registered email address</b></p>
             <asp:TextBox Rows="1" MaxLength="6"  ID="txtotp" runat="server" class="form-control shadow  px-4" placeholder="Enter 6 digit OTP" style="border-radius:25px;height:3rem"></asp:TextBox>
        </asp:Panel>
        
        <!-- OTP button -->
        <asp:Panel ID="Panel2" runat="server">
        <div class="d-flex justify-content-center buttn mt-5 ">
            <asp:Button ID="btnotp" runat="server" Text="Get OTP" style="width:9rem;" class="btn btn-success shadow-sm" OnClick="btnotp_Click"/>
            <br />      
        </div>
         <div class="d-flex justify-content-center signup ">
              <p  class="mt-4"> Don't Have An Account? <a href="/signup.aspx" style="text-decoration:none;color:purple"><b>Sign Up</b></a></p>
          </div>
        </asp:Panel>

        <!-- Sign up button -->
        <asp:Panel ID="Panel3" runat="server">
             <div class="d-flex justify-content-center buttn mt-5 ">
            <asp:Button ID="Button2" runat="server" Text="Submit" style="width:9rem;" class="btn btn-success shadow-sm" OnClick="btnlogin_Click"/>
            </div>
        </asp:Panel>

    </div>
    <div class="col-md-5 d-sm-none d-none d-sm-block d-md-block">
            <div class="d-flex justify-content-center align-items-center">
             <img class="img-fluid rounded-circle shadow-lg" src="Images/login.jpeg" style="width:80%" />     
                </div>
    </div>
   </div>
</div>
   

    <!-- FOOTER -->
    <div style="position:relative">
    <footer class="px-4">
         <div class="d-flex justify-content-between" style="color:dimgrey">
             <div>
                  <p style="font-weight:500">Copyright © 2022</p>
             </div>
             <div style="font-weight:500">
                Terms of Service  | Privacy Center  |  Adchoices  |  Security
             </div>
         </div>

    </footer>
        </div>



    </form>
</body>
</html>



