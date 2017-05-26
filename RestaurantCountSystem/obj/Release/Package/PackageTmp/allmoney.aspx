<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="allmoney.aspx.cs" Inherits="RestaurantCountSystem.allmoney" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <label>起始時間<asp:TextBox ID="TextBox1" runat="server" TextMode="DateTimeLocal"></asp:TextBox></label>~<label>結束時間<asp:TextBox ID="TextBox2" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
    </label>  <asp:Button ID="Button1" runat="server" Text="查詢" OnClick="Button1_Click" />    <br/>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="時間" HeaderText="時間" SortExpression="時間" />
            <asp:BoundField DataField="點餐內容" HeaderText="點餐內容" SortExpression="點餐內容" />
            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
            <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
            <asp:BoundField DataField="用餐方式" HeaderText="用餐方式" SortExpression="用餐方式" />
            <asp:CheckBoxField DataField="是否出餐" HeaderText="是否出餐" SortExpression="是否出餐" />
            <asp:CheckBoxField DataField="是否結帳" HeaderText="是否結帳" SortExpression="是否結帳" />
            <asp:BoundField DataField="備註" HeaderText="備註" SortExpression="備註" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" SelectCommand="SELECT * FROM [店內餐點清單] WHERE (([時間] &gt;= @時間) AND ([時間] &lt;= @時間2))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="2016/07/11 上午 00:00" Name="時間" SessionField="str" Type="DateTime" />
            <asp:SessionParameter DefaultValue="2016/07/13 上午 00:00" Name="時間2" SessionField="end" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="總金額：" CssClass="Word"></asp:Label><asp:Label ID="Label_TableMoney" runat="server" Text="0" CssClass="Word"></asp:Label><br/>

    <br />
    </asp:Content>
