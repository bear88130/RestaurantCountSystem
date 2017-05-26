<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" smartNavigation="True" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="RestaurantCountSystem.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="checkoutpage">
    <h1>結帳區</h1>
    <div id="mainselection">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="用餐方式" DataValueField="用餐方式" class="dropdown"></asp:DropDownList>
        </div>
    <br/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" SelectCommand="SELECT [用餐方式] FROM [用餐方式表]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="false"/>
            <asp:BoundField DataField="時間" HeaderText="時間" SortExpression="時間" />
            <asp:BoundField DataField="點餐內容" HeaderText="點餐內容" SortExpression="點餐內容" />
            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
            <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
            <asp:CheckBoxField DataField="是否結帳" HeaderText="是否結帳" SortExpression="是否結帳" />
            <asp:BoundField DataField="用餐方式" HeaderText="用餐方式" SortExpression="用餐方式" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" DeleteCommand="DELETE FROM [店內餐點清單] WHERE [id] = @original_id AND (([時間] = @original_時間) OR ([時間] IS NULL AND @original_時間 IS NULL)) AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([用餐方式] = @original_用餐方式) OR ([用餐方式] IS NULL AND @original_用餐方式 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL))" InsertCommand="INSERT INTO [店內餐點清單] ([時間], [點餐內容], [數量], [金額], [用餐方式], [是否結帳]) VALUES (@時間, @點餐內容, @數量, @金額, @用餐方式, @是否結帳)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [時間], [點餐內容], [數量], [金額], [用餐方式], [是否結帳] FROM [店內餐點清單] WHERE (([用餐方式] = @用餐方式) AND ([是否結帳] = @是否結帳))" UpdateCommand="UPDATE [店內餐點清單] SET [時間] = @時間, [點餐內容] = @點餐內容, [數量] = @數量, [金額] = @金額, [用餐方式] = @用餐方式, [是否結帳] = @是否結帳 WHERE [id] = @original_id AND (([時間] = @original_時間) OR ([時間] IS NULL AND @original_時間 IS NULL)) AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([用餐方式] = @original_用餐方式) OR ([用餐方式] IS NULL AND @original_用餐方式 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_id" Type="Int32" />
        <asp:Parameter Name="original_時間" Type="DateTime" />
        <asp:Parameter Name="original_點餐內容" Type="String" />
        <asp:Parameter Name="original_數量" Type="Int32" />
        <asp:Parameter Name="original_金額" Type="Decimal" />
        <asp:Parameter Name="original_用餐方式" Type="String" />
        <asp:Parameter Name="original_是否結帳" Type="Boolean" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="時間" Type="DateTime" />
        <asp:Parameter Name="點餐內容" Type="String" />
        <asp:Parameter Name="數量" Type="Int32" />
        <asp:Parameter Name="金額" Type="Decimal" />
        <asp:Parameter Name="用餐方式" Type="String" />
        <asp:Parameter Name="是否結帳" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="用餐方式" PropertyName="SelectedValue" Type="String" />
        <asp:Parameter DefaultValue="false" Name="是否結帳" Type="Boolean" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="時間" Type="DateTime" />
        <asp:Parameter Name="點餐內容" Type="String" />
        <asp:Parameter Name="數量" Type="Int32" />
        <asp:Parameter Name="金額" Type="Decimal" />
        <asp:Parameter Name="用餐方式" Type="String" />
        <asp:Parameter Name="是否結帳" Type="Boolean" />
        <asp:Parameter Name="original_id" Type="Int32" />
        <asp:Parameter Name="original_時間" Type="DateTime" />
        <asp:Parameter Name="original_點餐內容" Type="String" />
        <asp:Parameter Name="original_數量" Type="Int32" />
        <asp:Parameter Name="original_金額" Type="Decimal" />
        <asp:Parameter Name="original_用餐方式" Type="String" />
        <asp:Parameter Name="original_是否結帳" Type="Boolean" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="總金額：" CssClass="Word"></asp:Label><asp:Label ID="Label_TableMoney" runat="server" Text="" CssClass="Word"></asp:Label>  
    <br/>    <br/>
        <asp:Button ID="Button1" runat="server" Text="▼結帳" OnClick="Button1_Click" class="MainButtonStyle"/>

        </div>

        </asp:Content>

