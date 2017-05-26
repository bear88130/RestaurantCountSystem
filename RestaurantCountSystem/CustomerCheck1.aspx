<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerCheck1.aspx.cs" Inherits="RestaurantCountSystem.CustomerCheck1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" DeleteCommand="DELETE FROM [店內餐點清單] WHERE [id] = @original_id AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([用餐方式] = @original_用餐方式) OR ([用餐方式] IS NULL AND @original_用餐方式 IS NULL)) AND (([是否出餐] = @original_是否出餐) OR ([是否出餐] IS NULL AND @original_是否出餐 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL)) AND (([備註] = @original_備註) OR ([備註] IS NULL AND @original_備註 IS NULL))" InsertCommand="INSERT INTO [店內餐點清單] ([點餐內容], [數量], [金額], [用餐方式], [是否出餐], [是否結帳], [備註]) VALUES (@點餐內容, @數量, @金額, @用餐方式, @是否出餐, @是否結帳, @備註)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [點餐內容], [數量], [金額], [用餐方式], [是否出餐], [是否結帳], [備註] FROM [店內餐點清單] WHERE (([是否出餐] = @是否出餐) AND ([是否結帳] = @是否結帳) AND ([用餐方式] = @用餐方式))" UpdateCommand="UPDATE [店內餐點清單] SET [點餐內容] = @點餐內容, [數量] = @數量, [金額] = @金額, [用餐方式] = @用餐方式, [是否出餐] = @是否出餐, [是否結帳] = @是否結帳, [備註] = @備註 WHERE [id] = @original_id AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([用餐方式] = @original_用餐方式) OR ([用餐方式] IS NULL AND @original_用餐方式 IS NULL)) AND (([是否出餐] = @original_是否出餐) OR ([是否出餐] IS NULL AND @original_是否出餐 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL)) AND (([備註] = @original_備註) OR ([備註] IS NULL AND @original_備註 IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_點餐內容" Type="String" />
            <asp:Parameter Name="original_數量" Type="Int32" />
            <asp:Parameter Name="original_金額" Type="Int32" />
            <asp:Parameter Name="original_用餐方式" Type="String" />
            <asp:Parameter Name="original_是否出餐" Type="Boolean" DefaultValue="false" />
            <asp:Parameter Name="original_是否結帳" Type="Boolean" DefaultValue="false" />
            <asp:Parameter Name="original_備註" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="點餐內容" Type="String" />
            <asp:Parameter Name="數量" Type="Int32" />
            <asp:Parameter Name="金額" Type="Int32" />
            <asp:Parameter Name="用餐方式" Type="String" />
            <asp:Parameter Name="是否出餐" Type="Boolean" />
            <asp:Parameter Name="是否結帳" Type="Boolean" />
            <asp:Parameter Name="備註" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="是否出餐" Type="Boolean" />
            <asp:Parameter DefaultValue="false" Name="是否結帳" Type="Boolean" />
            <asp:CookieParameter CookieName="TransferValue" DefaultValue="請選擇" Name="用餐方式" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="點餐內容" Type="String" />
            <asp:Parameter Name="數量" Type="Int32" />
            <asp:Parameter Name="金額" Type="Int32" />
            <asp:Parameter Name="用餐方式" Type="String" />
            <asp:Parameter Name="是否出餐" Type="Boolean" />
            <asp:Parameter Name="是否結帳" Type="Boolean" />
            <asp:Parameter Name="備註" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_點餐內容" Type="String" />
            <asp:Parameter Name="original_數量" Type="Int32" />
            <asp:Parameter Name="original_金額" Type="Int32" />
            <asp:Parameter Name="original_用餐方式" Type="String" />
            <asp:Parameter Name="original_是否出餐" Type="Boolean" />
            <asp:Parameter Name="original_是否結帳" Type="Boolean" />
            <asp:Parameter Name="original_備註" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="false"/>
                <asp:BoundField DataField="點餐內容" HeaderText="點餐內容" SortExpression="點餐內容" />
                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
                <asp:BoundField DataField="用餐方式" HeaderText="桌號" SortExpression="用餐方式" />
                <asp:CheckBoxField DataField="是否出餐" HeaderText="是否出餐" SortExpression="是否出餐" Visible="false" />
                <asp:CheckBoxField DataField="是否結帳" HeaderText="是否結帳" SortExpression="是否結帳" Visible="false"/>
                <asp:BoundField DataField="備註" HeaderText="備註" SortExpression="備註" />
            </Columns>
        </asp:GridView>


    </div>
    </form>
</body>
</html>
