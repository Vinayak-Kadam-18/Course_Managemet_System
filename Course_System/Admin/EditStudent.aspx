<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="Course_System.Admin.EditStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="m-5">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" GridLines="Both" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" BorderWidth="1px" CssClass="grid">

        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
      <Columns>
        <asp:BoundField DataField="StudentId" HtmlEncode="False" DataFormatString="<a style='color:blue;text-decoration:underline' target='_blank' href='/Admin/Edit.aspx?id={0}'>EDIT</a>"/>
    </Columns>
    </asp:GridView>
    </div>
</asp:Content>
