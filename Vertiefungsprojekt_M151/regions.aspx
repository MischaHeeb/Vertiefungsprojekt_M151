<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="regions.aspx.cs" Inherits="Vertiefungsprojekt_M151.regions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/RegionsStyle.css?v=@Guid.NewGuid().ToString()" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="controls">
        <asp:TextBox ID="InputField" CssClass="Input" runat="server" />
        <asp:Button Text="Hinzufügen" CssClass="Button add" ID="AddBtn" OnClick="ClickAdd" runat="server" />
        <asp:Button Text="Löschen" CssClass="Button delete" ID="DeleteBtn" OnClick="ClickDelete" runat="server" />
        <asp:Button Text="Gross/Klein" CssClass="Button invert" ID="InvertBtn" OnClick="ClickInvert" runat="server" />
    </div>

    <asp:GridView ID="DBGridView" CssClass="GridView" 
        PagerStyle-CssClass="pager"
        HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
       AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" runat="server" >
        <Columns>
            <asp:BoundField DataField="RegionID" HeaderText="Region ID" ReadOnly="True" SortExpression="RegionID" />
            <asp:BoundField DataField="RegionDescription" HeaderText="Region Description" SortExpression="RegionDescription" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindDB %>" SelectCommand="SELECT * FROM [Region]"></asp:SqlDataSource>
</asp:Content>
