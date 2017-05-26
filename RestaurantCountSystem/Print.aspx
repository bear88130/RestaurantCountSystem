<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" smartNavigation="True" AutoEventWireup="true" CodeBehind="Print.aspx.cs" Inherits="RestaurantCountSystem.Print" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <div id="printpage">
    <h1>選擇列印桌號</h1>
      <div id="mainselection">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="用餐方式" DataValueField="用餐方式" class="dropdown" ></asp:DropDownList>
          </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" SelectCommand="SELECT [用餐方式] FROM [用餐方式表]"></asp:SqlDataSource>
    <div id="block">
    <h2>餐點清單</h2>
        <asp:Label ID="Label3" runat="server" Text="桌號：" CssClass="Word"></asp:Label><asp:Label ID="Label2" runat="server" Text="" CssClass="Word"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="點餐內容" HeaderText="點餐內容" SortExpression="點餐內容" />
            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
            <asp:CheckBoxField DataField="是否出餐" HeaderText="是否出餐" SortExpression="是否出餐" Visible="false"/>
            <asp:CheckBoxField DataField="是否結帳" HeaderText="是否結帳" SortExpression="是否結帳" Visible="false"/>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" Visible="false"/>
            <asp:BoundField DataField="備註" HeaderText="備註" SortExpression="備註" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" SelectCommand="SELECT [點餐內容], [數量], [是否出餐], [是否結帳], [id], [備註] FROM [店內餐點清單] WHERE (([是否出餐] = @是否出餐) AND ([是否結帳] = @是否結帳) AND ([用餐方式] = @用餐方式))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [店內餐點清單] WHERE [id] = @original_id AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([是否出餐] = @original_是否出餐) OR ([是否出餐] IS NULL AND @original_是否出餐 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL)) AND (([備註] = @original_備註) OR ([備註] IS NULL AND @original_備註 IS NULL))" InsertCommand="INSERT INTO [店內餐點清單] ([點餐內容], [數量], [是否出餐], [是否結帳], [備註]) VALUES (@點餐內容, @數量, @是否出餐, @是否結帳, @備註)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [店內餐點清單] SET [點餐內容] = @點餐內容, [數量] = @數量, [是否出餐] = @是否出餐, [是否結帳] = @是否結帳, [備註] = @備註 WHERE [id] = @original_id AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([是否出餐] = @original_是否出餐) OR ([是否出餐] IS NULL AND @original_是否出餐 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL)) AND (([備註] = @original_備註) OR ([備註] IS NULL AND @original_備註 IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_點餐內容" Type="String" />
            <asp:Parameter Name="original_數量" Type="Int32" />
            <asp:Parameter Name="original_是否出餐" Type="Boolean" />
            <asp:Parameter Name="original_是否結帳" Type="Boolean" />
            <asp:Parameter Name="original_備註" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="點餐內容" Type="String" />
            <asp:Parameter Name="數量" Type="Int32" />
            <asp:Parameter Name="是否出餐" Type="Boolean" />
            <asp:Parameter Name="是否結帳" Type="Boolean" />
            <asp:Parameter Name="備註" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="是否出餐" Type="Boolean" />
            <asp:Parameter DefaultValue="false" Name="是否結帳" Type="Boolean" />
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="請選擇" Name="用餐方式" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="點餐內容" Type="String" />
            <asp:Parameter Name="數量" Type="Int32" />
            <asp:Parameter Name="是否出餐" Type="Boolean" />
            <asp:Parameter Name="是否結帳" Type="Boolean" />
            <asp:Parameter Name="備註" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_點餐內容" Type="String" />
            <asp:Parameter Name="original_數量" Type="Int32" />
            <asp:Parameter Name="original_是否出餐" Type="Boolean" />
            <asp:Parameter Name="original_是否結帳" Type="Boolean" />
            <asp:Parameter Name="original_備註" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="總金額：" CssClass="Word"></asp:Label><asp:Label ID="Label_TableMoney" runat="server" Text="0" CssClass="Word"></asp:Label>
</div>
            <br/>

     <input id="btnPrint" type="button" value="▼列印單據" onclick="previewScreen(block)" class="MainButtonStyle"/>  
    <asp:Button ID="Button1" runat="server" Text="▼確認出餐" OnClick="Button1_Click" class="MainButtonStyle"/>
        </div>
</asp:Content>
