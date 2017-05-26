<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RestaurantCountSystem._Default" SmartNavigation="True"  %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div class="defaultpage">

           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>

         <div class="DefaultOtherBlock" style="display:none">
        <div class="MainWordBlock">
        <p class="MainWord">目前空桌</p>
        </div>
                          <table class="tabletable">
                 <tr>
                     <td>&nbsp;</td>
                     <td><asp:Label ID="table21" runat="server" Text="21" CssClass="Word"></asp:Label> </td>
                     <td><asp:Label ID="table20" runat="server" Text="20" CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table19" runat="server" Text="19" CssClass="Word"></asp:Label></td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td><asp:Label ID="table24" runat="server" Text="24"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table22" runat="server" Text="22"  CssClass="Word"></asp:Label></td>
                 </tr>
                 <tr>
                     <td><asp:Label ID="table18" runat="server" Text="18"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table17" runat="server" Text="17"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table16" runat="server" Text="16"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table15" runat="server" Text="15"  CssClass="Word"></asp:Label></td>
                     <td>&nbsp;</td>
                     <td><asp:Label ID="table14" runat="server" Text="14"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table13" runat="server" Text="13"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table12" runat="server" Text="12"  CssClass="Word"></asp:Label></td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td><asp:Label ID="table11" runat="server" Text="11"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table10" runat="server" Text="10"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table9" runat="server" Text="9"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table8" runat="server" Text="8"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table7" runat="server" Text="7"  CssClass="Word"></asp:Label></td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td><asp:Label ID="table5" runat="server" Text="5"  CssClass="Word"></asp:Label></td>                    
                     <td><asp:Label ID="table3" runat="server" Text="3"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table2" runat="server" Text="2"  CssClass="Word"></asp:Label></td>
                     <td><asp:Label ID="table1" runat="server" Text="1"  CssClass="Word"></asp:Label></td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td><asp:Label ID="table23" runat="server" Text="23"  CssClass="Word"></asp:Label></td>
                 </tr>
             </table>
              
       
              
              
             <asp:Label ID="out1" runat="server" Text="外帶1"  CssClass="Word"></asp:Label>
             <asp:Label ID="out2" runat="server" Text="外帶2"  CssClass="Word"></asp:Label>
             <asp:Label ID="out3" runat="server" Text="外帶3"  CssClass="Word"></asp:Label>
             <asp:Label ID="out4" runat="server" Text="外帶4"  CssClass="Word"></asp:Label>
             <asp:Label ID="out5" runat="server" Text="外帶5"  CssClass="Word"></asp:Label>
             <asp:Label ID="out6" runat="server" Text="外帶6"  CssClass="Word"></asp:Label>

             <br/>
                         </div>
                      <div class="DefaultOtherBlock">

         <p class="MainWord">選擇桌號</p>
             <div id="mainselection">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="用餐方式" DataValueField="用餐方式" AutoPostBack="True" class="dropdown" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                 </div>
             <br/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" SelectCommand="SELECT [用餐方式] FROM [用餐方式表]"></asp:SqlDataSource>
                          </div>
  <!-- 點餐選單以下 -->
        <div class="DefaultOtherBlock">
            <div class="MainWordBlock">
        <p class="MainWord">選擇類別後點餐</p>
            </div>



       <div>
            <asp:Button ID="Button1" runat="server" Text="肉羹類" OnClick="Rougeng_Click"  class="ClassStyle"/>
            <asp:Button ID="Button2" runat="server" Text="飯類" OnClick="Rice_Click"  class="ClassStyle"/>
            <asp:Button ID="Button3" runat="server" Text="乾麵類" OnClick="DriedNoodle_Click"  class="ClassStyle"/>
            <asp:Button ID="Button4" runat="server" Text="湯麵類" OnClick="SoupdNoodle_Click"  class="ClassStyle"/>
            <asp:Button ID="Button5" runat="server" Text="湯類" OnClick="Soup_Click"  class="ClassStyle"/>
            <asp:Button ID="Button6" runat="server" Text="小菜" OnClick="Dish_Click"  class="ClassStyle"/>

        </div>
        
         <div id="RougengPlace" runat="server">
            <asp:Button ID="menu25" runat="server" Text="小意麵羹-45" OnClick="menu25_Click" class="MenuStyle"/>         
            <asp:Button ID="menu27" runat="server" Text="小油麵羹-45" class="MenuStyle" OnClick="menu27_Click"/>           
            <asp:Button ID="menu29" runat="server" Text="小米粉羹-45" class="MenuStyle" OnClick="menu29_Click"/>         
            <asp:Button ID="menu31" runat="server" Text="小冬粉羹-45" class="MenuStyle" OnClick="menu31_Click"/>            
            <asp:Button ID="menu33" runat="server" Text="小粿仔羹-45" class="MenuStyle" OnClick="menu33_Click"/>            
            <asp:Button ID="menu35" runat="server" Text="小米苔目羹-45" class="MenuStyle" OnClick="menu35_Click"/>
            <asp:Button ID="menu37" runat="server" Text="小肉羹飯-45" class="MenuStyle" OnClick="menu37_Click"/>
                            <br/>
             <asp:Button ID="menu26" runat="server" Text="大意麵羹-70" class="MenuStyle" OnClick="menu26_Click"/>
             <asp:Button ID="menu28" runat="server" Text="大油麵羹-70" class="MenuStyle" OnClick="menu28_Click"/>
             <asp:Button ID="menu30" runat="server" Text="大米粉羹-70" class="MenuStyle" OnClick="menu30_Click"/>
             <asp:Button ID="menu32" runat="server" Text="大冬粉羹-70" class="MenuStyle" OnClick="menu32_Click"/>
             <asp:Button ID="menu34" runat="server" Text="大粿仔羹-70" class="MenuStyle" OnClick="menu34_Click"/>
            <asp:Button ID="menu36" runat="server" Text="大米苔目羹-70" class="MenuStyle" OnClick="menu36_Click"/>
            <asp:Button ID="menu38" runat="server" Text="大肉羹飯-70" class="MenuStyle" OnClick="menu38_Click"/>

            </div>
        <div id="RicePlace" runat="server">
            <asp:Button ID="menu51" runat="server" Text="白飯-10" OnClick="menu51_Click" class="MenuStyle"/>
            <asp:Button ID="menu52" runat="server" Text="小魯肉飯-25" class="MenuStyle" OnClick="menu52_Click"/>
            <asp:Button ID="menu53" runat="server" Text="大魯肉飯-35" class="MenuStyle" OnClick="menu53_Click"/>
            </div>
           <div id="DriedNoodlePlace" runat="server">
            <asp:Button ID="menu1" runat="server" Text="小乾意麵-35" OnClick="menu1_Click" class="MenuStyle"/>        
            <asp:Button ID="menu5" runat="server" Text="小乾油麵-35" class="MenuStyle" OnClick="menu5_Click"/>        
            <asp:Button ID="menu9" runat="server" Text="小乾米粉-35" class="MenuStyle" OnClick="menu9_Click"/>          
            <asp:Button ID="menu13" runat="server" Text="小乾冬粉-35" class="MenuStyle" OnClick="menu13_Click"/>          
            <asp:Button ID="menu17" runat="server" Text="小乾粿仔-35" class="MenuStyle" OnClick="menu17_Click"/>
            <asp:Button ID="menu21" runat="server" Text="小乾米苔目-35" class="MenuStyle" OnClick="menu21_Click"/>
               <br/>
            <asp:Button ID="menu2" runat="server" Text="大乾意麵-55" class="MenuStyle" OnClick="menu2_Click"/>
            <asp:Button ID="menu6" runat="server" Text="大乾油麵-55" class="MenuStyle" OnClick="menu6_Click"/>
            <asp:Button ID="menu10" runat="server" Text="大乾米粉-55" class="MenuStyle" OnClick="menu10_Click"/>
            <asp:Button ID="menu14" runat="server" Text="大乾冬粉-55" class="MenuStyle" OnClick="menu14_Click"/>
            <asp:Button ID="menu18" runat="server" Text="大乾粿仔-55" class="MenuStyle" OnClick="menu18_Click"/>
            <asp:Button ID="menu22" runat="server" Text="大乾米苔目-55" class="MenuStyle" OnClick="menu22_Click"/>
            </div>
            <div id="SoupdNoodlePlace" runat="server">
            <asp:Button ID="menu3" runat="server" Text="小湯意麵-35"  class="MenuStyle" OnClick="menu3_Click"/>   
            <asp:Button ID="menu7" runat="server" Text="小湯油麵-35" class="MenuStyle" OnClick="menu7_Click"/> 
            <asp:Button ID="menu11" runat="server" Text="小湯米粉-35" class="MenuStyle" OnClick="menu11_Click"/>     
            <asp:Button ID="menu15" runat="server" Text="小湯冬粉-35" class="MenuStyle" OnClick="menu15_Click"/>       
            <asp:Button ID="menu19" runat="server" Text="小湯粿仔-35" class="MenuStyle" OnClick="menu19_Click"/>
            <asp:Button ID="menu23" runat="server" Text="小湯米苔目-35" class="MenuStyle" OnClick="menu23_Click"/>
                               <br/>
            <asp:Button ID="menu4" runat="server" Text="大湯意麵-55" class="MenuStyle" OnClick="menu4_Click"/>
            <asp:Button ID="menu8" runat="server" Text="大湯油麵-55" class="MenuStyle" OnClick="menu8_Click"/>
            <asp:Button ID="menu12" runat="server" Text="大湯米粉-55" class="MenuStyle" OnClick="menu12_Click"/>
            <asp:Button ID="menu16" runat="server" Text="大湯冬粉-55" class="MenuStyle" OnClick="menu16_Click"/>
            <asp:Button ID="menu20" runat="server" Text="大湯粿仔-55" class="MenuStyle" OnClick="menu20_Click"/>
            <asp:Button ID="menu24" runat="server" Text="大湯米苔目-55" class="MenuStyle" OnClick="menu24_Click"/>
          </div>
            <div id="SoupPlace" runat="server">
            <asp:Button ID="menu39" runat="server" Text="香菇肉羹湯-45"  class="MenuStyle" OnClick="menu39_Click"/>
            <asp:Button ID="menu40" runat="server" Text="菜頭排骨湯-40" class="MenuStyle" OnClick="menu40_Click"/>
            <asp:Button ID="menu41" runat="server" Text="金針排骨湯-40" class="MenuStyle" OnClick="menu41_Click"/>
            <asp:Button ID="menu42" runat="server" Text="貢丸湯-25" class="MenuStyle" OnClick="menu42_Click"/>
            <asp:Button ID="menu43" runat="server" Text="青菜湯(大陸妹)-30" class="MenuStyle" OnClick="menu43_Click"/>
            <asp:Button ID="menu44" runat="server" Text="青菜湯(地瓜葉)-30" class="MenuStyle" OnClick="menu44_Click"/>
            <asp:Button ID="menu45" runat="server" Text="青菜湯(空心菜)-30" class="MenuStyle" OnClick="menu45_Click"/>
            <asp:Button ID="menu46" runat="server" Text="嘴邊肉湯-40" class="MenuStyle" OnClick="menu46_Click"/>
            <asp:Button ID="menu47" runat="server" Text="大腸湯-40" class="MenuStyle" OnClick="menu47_Click"/>
            <asp:Button ID="menu48" runat="server" Text="豬肝湯-40" class="MenuStyle" OnClick="menu48_Click"/>
            <asp:Button ID="menu49" runat="server" Text="肝連湯-40" class="MenuStyle" OnClick="menu49_Click"/>
            <asp:Button ID="menu50" runat="server" Text="粉腸湯-40" class="MenuStyle" OnClick="menu50_Click"/>
           </div>
            <div id="DishPlace" runat="server">
            <asp:Button ID="menu54" runat="server" Text="豆干-10"  class="MenuStyle" OnClick="menu54_Click"/>
            <asp:Button ID="menu55" runat="server" Text="海帶(2個)-20" class="MenuStyle" OnClick="menu55_Click"/>
            <asp:Button ID="menu56" runat="server" Text="魯蛋(2個)-20" class="MenuStyle" OnClick="menu56_Click"/>
            <asp:Button ID="menu57" runat="server" Text="油豆腐(2個)-20" class="MenuStyle" OnClick="menu57_Click"/>
            <asp:Button ID="menu58" runat="server" Text="小白菜魯-20" class="MenuStyle" OnClick="menu58_Click"/>
            <asp:Button ID="menu59" runat="server" Text="大白菜魯-35" class="MenuStyle" OnClick="menu59_Click"/>
            <asp:Button ID="menu60" runat="server" Text="小魯筍絲-20" class="MenuStyle" OnClick="menu60_Click"/>
            <asp:Button ID="menu61" runat="server" Text="大魯筍絲-35" class="MenuStyle" OnClick="menu61_Click"/>
            <asp:Button ID="menu62" runat="server" Text="豬皮-20" class="MenuStyle" OnClick="menu62_Click"/>
            <asp:Button ID="menu63" runat="server" Text="豬頭皮-25" class="MenuStyle" OnClick="menu63_Click"/>
            <asp:Button ID="menu64" runat="server" Text="豬耳朵-25" class="MenuStyle" OnClick="menu64_Click"/>
            <asp:Button ID="menu65" runat="server" Text="魯大腸-50" class="MenuStyle" OnClick="menu65_Click"/>
            <asp:Button ID="menu66" runat="server" Text="肝連-50"  class="MenuStyle" OnClick="menu66_Click"/>
            <asp:Button ID="menu67" runat="server" Text="粉腸-50" class="MenuStyle" OnClick="menu67_Click"/>
            <asp:Button ID="menu68" runat="server" Text="三層肉-50" class="MenuStyle" OnClick="menu68_Click"/>
            <asp:Button ID="menu69" runat="server" Text="嘴邊肉-50" class="MenuStyle" OnClick="menu69_Click"/>
            <asp:Button ID="menu70" runat="server" Text="鯊魚煙-50" class="MenuStyle" OnClick="menu70_Click"/>
            <asp:Button ID="menu71" runat="server" Text="燙大陸妹-35" class="MenuStyle" OnClick="menu71_Click"/>
            <asp:Button ID="menu72" runat="server" Text="燙地瓜葉-35" class="MenuStyle" OnClick="menu72_Click"/>
            <asp:Button ID="menu73" runat="server" Text="燙空心菜-35" class="MenuStyle" OnClick="menu73_Click"/>
            <asp:Button ID="menu74" runat="server" Text="涼拌韭菜-40" class="MenuStyle" OnClick="menu74_Click"/>
            <asp:Button ID="menu75" runat="server" Text="綜合小菜-25" class="MenuStyle" OnClick="menu75_Click"/>
            <asp:Button ID="menu76" runat="server" Text="飲料-10" class="MenuStyle" OnClick="menu76_Click"/>
            <asp:Button ID="menu77" runat="server" Text="飲料-20" class="MenuStyle" OnClick="menu77_Click"/>
            <asp:Button ID="menu78" runat="server" Text="飲料-35" class="MenuStyle" OnClick="menu78_Click"/>
            <asp:Button ID="menu79" runat="server" Text="其他-5" class="MenuStyle" OnClick="menu79_Click"/>
            <asp:Button ID="menu80" runat="server" Text="其他-10" class="MenuStyle" OnClick="menu80_Click"/>
            <asp:Button ID="menu81" runat="server" Text="其他-50" class="MenuStyle" OnClick="menu81_Click"/>

                </div>

        <div>
            <br/>
            <asp:Label ID="Label6" runat="server" Text="備註：" CssClass="Word"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
                    </div>

        <div>
           <div class="DefaultOtherBlock" style="display:none">

        <p class="MainWord">確認餐點輸入數量</p>
            <asp:Label ID="Label1" runat="server" Text="餐點名稱：" CssClass="Word"></asp:Label>
           
            <asp:Button ID="addnumber" runat="server" Text="+" OnClick="addnumber_Click" />
   
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Width="50px"></asp:TextBox>   
          
            <asp:Button ID="lessnumber" runat="server" Text="-" OnClick="lessnumber_Click" />
 

            <asp:Button ID="Button13" runat="server" Text="▼確定" OnClick="Button13_Click" class="MainButtonStyle"/>
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Visible="False" ></asp:Label>
        <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>

            </div>



  <!-- 點餐選單以上 -->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
             ConnectionString="<%$ ConnectionStrings:resuseConnectionString %>" DeleteCommand="DELETE FROM [店內餐點清單] WHERE [id] = @original_id AND (([時間] = @original_時間) OR ([時間] IS NULL AND @original_時間 IS NULL)) AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([用餐方式] = @original_用餐方式) OR ([用餐方式] IS NULL AND @original_用餐方式 IS NULL)) AND (([是否出餐] = @original_是否出餐) OR ([是否出餐] IS NULL AND @original_是否出餐 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL)) AND (([備註] = @original_備註) OR ([備註] IS NULL AND @original_備註 IS NULL))" InsertCommand="INSERT INTO [店內餐點清單] ([時間], [點餐內容], [數量], [金額], [用餐方式], [是否出餐], [是否結帳], [備註]) VALUES (@時間, @點餐內容, @數量, @金額, @用餐方式, @是否出餐, @是否結帳, @備註)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [店內餐點清單] WHERE ([用餐方式] = @用餐方式)" UpdateCommand="UPDATE [店內餐點清單] SET [時間] = @時間, [點餐內容] = @點餐內容, [數量] = @數量, [金額] = @金額, [用餐方式] = @用餐方式, [是否出餐] = @是否出餐, [是否結帳] = @是否結帳, [備註] = @備註 WHERE [id] = @original_id AND (([時間] = @original_時間) OR ([時間] IS NULL AND @original_時間 IS NULL)) AND (([點餐內容] = @original_點餐內容) OR ([點餐內容] IS NULL AND @original_點餐內容 IS NULL)) AND (([數量] = @original_數量) OR ([數量] IS NULL AND @original_數量 IS NULL)) AND (([金額] = @original_金額) OR ([金額] IS NULL AND @original_金額 IS NULL)) AND (([用餐方式] = @original_用餐方式) OR ([用餐方式] IS NULL AND @original_用餐方式 IS NULL)) AND (([是否出餐] = @original_是否出餐) OR ([是否出餐] IS NULL AND @original_是否出餐 IS NULL)) AND (([是否結帳] = @original_是否結帳) OR ([是否結帳] IS NULL AND @original_是否結帳 IS NULL)) AND (([備註] = @original_備註) OR ([備註] IS NULL AND @original_備註 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_時間" Type="DateTime" />
                <asp:Parameter Name="original_點餐內容" Type="String" />
                <asp:Parameter Name="original_數量" Type="Int32" />
                <asp:Parameter Name="original_金額" Type="Decimal" />
                <asp:Parameter Name="original_用餐方式" Type="String" />
                <asp:Parameter Name="original_是否出餐" Type="Boolean" />
                <asp:Parameter Name="original_是否結帳" Type="Boolean" />
                <asp:Parameter Name="original_備註" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Label4" DefaultValue="" Name="時間" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="Label1" Name="點餐內容" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="數量" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label3" DefaultValue="" Name="金額" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="DropDownList1" Name="用餐方式" PropertyName="SelectedValue" Type="String" />
                <asp:Parameter DefaultValue="false" Name="是否出餐" Type="Boolean" />
                <asp:Parameter Name="是否結帳" Type="Boolean" DefaultValue="false" />
                <asp:ControlParameter ControlID="TextBox2" Name="備註" PropertyName="Text" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="用餐方式" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="時間" Type="DateTime" />
                <asp:Parameter Name="點餐內容" Type="String" />
                <asp:Parameter Name="數量" Type="Int32" />
                <asp:Parameter Name="金額" Type="Decimal" />
                <asp:Parameter Name="用餐方式" Type="String" />
                <asp:Parameter Name="是否出餐" Type="Boolean" />
                <asp:Parameter Name="是否結帳" Type="Boolean" />
                <asp:Parameter Name="備註" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_時間" Type="DateTime" />
                <asp:Parameter Name="original_點餐內容" Type="String" />
                <asp:Parameter Name="original_數量" Type="Int32" />
                <asp:Parameter Name="original_金額" Type="Decimal" />
                <asp:Parameter Name="original_用餐方式" Type="String" />
                <asp:Parameter Name="original_是否出餐" Type="Boolean" />
                <asp:Parameter Name="original_是否結帳" Type="Boolean" />
                <asp:Parameter Name="original_備註" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
             </div>
                   <div class="DefaultOtherBlock">
      <p class="MainWord">目前餐點</p>
        <asp:Button ID="DeleteMenu" runat="server" Text="▼顯示餐點" OnClick="DeleteMenu_Click" class="MainButtonStyle" />
                
             <iframe src="CustomerCheck1.aspx" width="320px" height="auto" frameborder="0" scrolling="true">


             </iframe>
             </div>

       <div class="DefaultOtherBlock">
           <div class="MainWordBlock">
        <p class="MainWord">櫃台確認</p>
             </div>
        <asp:Label ID="Label5" runat="server" Text="總金額：" CssClass="Word"></asp:Label><asp:Label ID="Label_TableMoney" runat="server" Text="" CssClass="Word"></asp:Label>

 

            <br/>

       </div>







               </ContentTemplate>
    </asp:UpdatePanel>
   </div>



</asp:Content>
