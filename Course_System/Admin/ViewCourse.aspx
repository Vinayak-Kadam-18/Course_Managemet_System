<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCourse.aspx.cs" Inherits="Course_System.Admin.ViewCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-5">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="100%" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle HorizontalAlign="Center"/>
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
             <Columns>
                 <asp:BoundField DataField="Course_Id" HtmlEncode="False" DataFormatString="<a style='color:blue;text-decoration:underline' target='_blank' href='/Admin/EditCourse.aspx?id={0}'>EDIT</a>"/>
                 <asp:BoundField DataField="Course_Id" HtmlEncode="False" DataFormatString="<a style='color:Green;;text-decoration:underline' target='_blank' href='/Admin/AddModule.aspx?course={0}'>ADD</a>"/>
             </Columns>

        </asp:GridView>
        </div>
</asp:Content>
