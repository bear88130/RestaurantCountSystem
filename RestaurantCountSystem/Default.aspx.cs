using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantCountSystem
{
    public partial class _Default : Page
    {
        int singleprice;
        int nowprice;
        int tableprice;
        int mealnumber;

        static string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["resuseConnectionString"].ConnectionString;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(connString);
        System.Data.SqlClient.SqlConnection conn2 = new System.Data.SqlClient.SqlConnection(connString);

        protected void Page_Load(object sender, EventArgs e)
        {

            Label4.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");


            conn2.Open();
            System.Data.SqlClient.SqlCommand cmd2 = new System.Data.SqlClient.SqlCommand
             ("Select 用餐方式 From 店內餐點清單 Where 是否結帳=0", conn2);
            System.Data.SqlClient.SqlDataReader dr2 = cmd2.ExecuteReader();
            try
            {

                while (dr2.Read())
                {
                    for (int i = 0; i < dr2.FieldCount; i++)
                    {
                        switch (dr2[i].ToString())
                        {
                            case "1":
                                table1.Visible = false;
                                break;
                            case "2":
                                table2.Visible = false;
                                break;
                            case "3":
                                table3.Visible = false;
                                break;
                            case "5":
                                table5.Visible = false;
                                break;
                            case "7":
                                table7.Visible = false;
                                break;
                            case "8":
                                table8.Visible = false;
                                break;
                            case "9":
                                table9.Visible = false;
                                break;
                            case "10":
                                table10.Visible = false;
                                break;
                            case "11":
                                table11.Visible = false;
                                break;
                            case "12":
                                table12.Visible = false;
                                break;
                            case "13":
                                table13.Visible = false;
                                break;
                            case "14":
                                table14.Visible = false;
                                break;
                            case "15":
                                table15.Visible = false;
                                break;
                            case "16":
                                table16.Visible = false;
                                break;
                            case "17":
                                table17.Visible = false;
                                break;
                            case "18":
                                table18.Visible = false;
                                break;
                            case "19":
                                table19.Visible = false;
                                break;
                            case "20":
                                table20.Visible = false;
                                break;
                            case "21":
                                table21.Visible = false;
                                break;
                            case "22":
                                table22.Visible = false;
                                break;
                            case "23":
                                table23.Visible = false;
                                break;
                            case "24":
                                table24.Visible = false;
                                break;
                            case "外帶1":
                                out1.Visible = false;
                                break;
                            case "外帶2":
                                out2.Visible = false;
                                break;
                            case "外帶3":
                                out3.Visible = false;
                                break;
                            case "外帶4":
                                out4.Visible = false;
                                break;
                            case "外帶5":
                                out5.Visible = false;
                                break;
                            case "外帶6":
                                out6.Visible = false;
                                break;
                        }
                    }

                }

            }
            finally
            {
                cmd2.Dispose();
                conn2.Close();
                conn2.Dispose();
            }



            if (!IsPostBack)
            {
                Session["mealnumber"] = 0;
                Session["tableprice"] = 0;
                RougengPlace.Style["display"] = "block";
                RicePlace.Style["display"] = "none";
                DriedNoodlePlace.Style["display"] = "none";
                SoupdNoodlePlace.Style["display"] = "none";
                SoupPlace.Style["display"] = "none";
                DishPlace.Style["display"] = "none";

            }


        }

        protected void Rougeng_Click(object sender, EventArgs e)
        {
            RougengPlace.Style["display"] = "block";
            RicePlace.Style["display"] = "none";
            DriedNoodlePlace.Style["display"] = "none";
            SoupdNoodlePlace.Style["display"] = "none";
            SoupPlace.Style["display"] = "none";
            DishPlace.Style["display"] = "none";
        }

        protected void Rice_Click(object sender, EventArgs e)
        {
            RougengPlace.Style["display"] = "none";
            RicePlace.Style["display"] = "block";
            DriedNoodlePlace.Style["display"] = "none";
            SoupdNoodlePlace.Style["display"] = "none";
            SoupPlace.Style["display"] = "none";
            DishPlace.Style["display"] = "none";
        }

        protected void DriedNoodle_Click(object sender, EventArgs e)
        {
            RougengPlace.Style["display"] = "none";
            RicePlace.Style["display"] = "none";
            DriedNoodlePlace.Style["display"] = "block";
            SoupdNoodlePlace.Style["display"] = "none";
            SoupPlace.Style["display"] = "none";
            DishPlace.Style["display"] = "none";
        }

        protected void SoupdNoodle_Click(object sender, EventArgs e)
        {
            RougengPlace.Style["display"] = "none";
            RicePlace.Style["display"] = "none";
            DriedNoodlePlace.Style["display"] = "none";
            SoupdNoodlePlace.Style["display"] = "block";
            SoupPlace.Style["display"] = "none";
            DishPlace.Style["display"] = "none";
        }

        protected void Soup_Click(object sender, EventArgs e)
        {
            RougengPlace.Style["display"] = "none";
            RicePlace.Style["display"] = "none";
            DriedNoodlePlace.Style["display"] = "none";
            SoupdNoodlePlace.Style["display"] = "none";
            SoupPlace.Style["display"] = "block";
            DishPlace.Style["display"] = "none";
        }

        protected void Dish_Click(object sender, EventArgs e)
        {
            RougengPlace.Style["display"] = "none";
            RicePlace.Style["display"] = "none";
            DriedNoodlePlace.Style["display"] = "none";
            SoupdNoodlePlace.Style["display"] = "none";
            SoupPlace.Style["display"] = "none";
            DishPlace.Style["display"] = "block";
        }

        void transfersql() {
            Response.Cookies["TransferValue"].Value = DropDownList1.SelectedValue;
            int a = 1;
            TextBox1.Text = a.ToString();
            int menucount = 1;
            int menuprice = Convert.ToInt32(Label2.Text);
            nowprice = menucount * menuprice;
            Label3.Text = Convert.ToString(nowprice);
            SqlDataSource2.Insert();


            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
                ("Select  金額 From 店內餐點清單 Where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn);
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();

            if (!dr.HasRows)
            {
                tableprice = 0;
                Session["tableprice"] = tableprice.ToString();
                Label_TableMoney.Text = Session["tableprice"].ToString();
            }
            else
            {
                try
                {
                    while (dr.Read())
                    {
                        for (int i = 0; i < dr.FieldCount; i++)
                        {
                            tableprice += Convert.ToInt32(dr[i]);
                            Session["tableprice"] = tableprice.ToString();
                            Label_TableMoney.Text = Session["tableprice"].ToString();
                        }
                    }
                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                    conn.Dispose();
                }
            }

        }



        protected void menu1_Click(object sender, EventArgs e)
        {
            Label1.Text = "小乾意麵";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }

        protected void menu2_Click(object sender, EventArgs e)
        {
            Label1.Text = "大乾意麵";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu3_Click(object sender, EventArgs e)
        {
            Label1.Text = "小湯意麵";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();

        }
        protected void menu4_Click(object sender, EventArgs e)
        {
            Label1.Text = "大湯意麵";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();

        }
        protected void menu5_Click(object sender, EventArgs e)
        {
            Label1.Text = "小乾油麵";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu6_Click(object sender, EventArgs e)
        {
            Label1.Text = "大乾油麵";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu7_Click(object sender, EventArgs e)
        {
            Label1.Text = "小湯油麵";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu8_Click(object sender, EventArgs e)
        {
            Label1.Text = "大湯油麵";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu9_Click(object sender, EventArgs e)
        {
            Label1.Text = "小乾米粉";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu10_Click(object sender, EventArgs e)
        {
            Label1.Text = "大乾米粉";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu11_Click(object sender, EventArgs e)
        {
            Label1.Text = "小湯米粉";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu12_Click(object sender, EventArgs e)
        {
            Label1.Text = "大湯米粉";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu13_Click(object sender, EventArgs e)
        {
            Label1.Text = "小乾冬粉";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu14_Click(object sender, EventArgs e)
        {
            Label1.Text = "大乾冬粉";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu15_Click(object sender, EventArgs e)
        {
            Label1.Text = "小湯冬粉";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu16_Click(object sender, EventArgs e)
        {
            Label1.Text = "大湯冬粉";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu17_Click(object sender, EventArgs e)
        {
            Label1.Text = "小乾粿仔";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu18_Click(object sender, EventArgs e)
        {
            Label1.Text = "大乾粿仔";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu19_Click(object sender, EventArgs e)
        {
            Label1.Text = "小湯粿仔";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu20_Click(object sender, EventArgs e)
        {
            Label1.Text = "大湯粿仔";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu21_Click(object sender, EventArgs e)
        {
            Label1.Text = "小乾米苔目";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu22_Click(object sender, EventArgs e)
        {
            Label1.Text = "大乾米苔目";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu23_Click(object sender, EventArgs e)
        {
            Label1.Text = "小湯米苔目";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu24_Click(object sender, EventArgs e)
        {
            Label1.Text = "大湯米苔目";
            singleprice = 55;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu25_Click(object sender, EventArgs e)
        {
            Label1.Text = "小意麵羹";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu26_Click(object sender, EventArgs e)
        {
            Label1.Text = "大意麵羹";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu27_Click(object sender, EventArgs e)
        {
            Label1.Text = "小油麵羹";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu28_Click(object sender, EventArgs e)
        {
            Label1.Text = "大油麵羹";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu29_Click(object sender, EventArgs e)
        {
            Label1.Text = "小米粉羹";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu30_Click(object sender, EventArgs e)
        {
            Label1.Text = "大米粉羹";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu31_Click(object sender, EventArgs e)
        {
            Label1.Text = "小冬粉羹";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu32_Click(object sender, EventArgs e)
        {
            Label1.Text = "大冬粉羹";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu33_Click(object sender, EventArgs e)
        {
            Label1.Text = "小粿仔羹";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu34_Click(object sender, EventArgs e)
        {
            Label1.Text = "大粿仔羹";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu35_Click(object sender, EventArgs e)
        {
            Label1.Text = "小米苔目羹";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu36_Click(object sender, EventArgs e)
        {
            Label1.Text = "大米苔目羹";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu37_Click(object sender, EventArgs e)
        {
            Label1.Text = "小肉羹飯";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu38_Click(object sender, EventArgs e)
        {
            Label1.Text = "大肉羹飯";
            singleprice = 70;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu39_Click(object sender, EventArgs e)
        {
            Label1.Text = "香菇肉羹湯";
            singleprice = 45;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu40_Click(object sender, EventArgs e)
        {
            Label1.Text = "菜頭排骨湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu41_Click(object sender, EventArgs e)
        {
            Label1.Text = "金針排骨湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu42_Click(object sender, EventArgs e)
        {
            Label1.Text = "貢丸湯";
            singleprice = 25;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu43_Click(object sender, EventArgs e)
        {
            Label1.Text = "青菜湯(大陸妹)";
            singleprice = 30;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu44_Click(object sender, EventArgs e)
        {
            Label1.Text = "青菜湯(地瓜葉)";
            singleprice = 30;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu45_Click(object sender, EventArgs e)
        {
            Label1.Text = "青菜湯(空心菜)";
            singleprice = 30;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu46_Click(object sender, EventArgs e)
        {
            Label1.Text = "嘴邊肉湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu47_Click(object sender, EventArgs e)
        {
            Label1.Text = "大腸湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu48_Click(object sender, EventArgs e)
        {
            Label1.Text = "豬肝湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu49_Click(object sender, EventArgs e)
        {
            Label1.Text = "肝連湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu50_Click(object sender, EventArgs e)
        {
            Label1.Text = "粉腸湯";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu51_Click(object sender, EventArgs e)
        {
            Label1.Text = "白飯";
            singleprice = 10;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu52_Click(object sender, EventArgs e)
        {
            Label1.Text = "小魯肉飯";
            singleprice = 25;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu53_Click(object sender, EventArgs e)
        {
            Label1.Text = "大魯肉飯";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu54_Click(object sender, EventArgs e)
        {
            Label1.Text = "豆干";
            singleprice = 10;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu55_Click(object sender, EventArgs e)
        {
            Label1.Text = "海帶";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu56_Click(object sender, EventArgs e)
        {
            Label1.Text = "魯蛋";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }

        protected void menu57_Click(object sender, EventArgs e)
        {
            Label1.Text = "油豆腐";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();

        }
        protected void menu58_Click(object sender, EventArgs e)
        {
            Label1.Text = "小白菜魯";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu59_Click(object sender, EventArgs e)
        {
            Label1.Text = "大白菜魯";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu60_Click(object sender, EventArgs e)
        {
            Label1.Text = "小魯筍絲";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu61_Click(object sender, EventArgs e)
        {
            Label1.Text = "大魯筍絲";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu62_Click(object sender, EventArgs e)
        {
            Label1.Text = "豬皮";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu63_Click(object sender, EventArgs e)
        {
            Label1.Text = "豬頭皮";
            singleprice = 25;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu64_Click(object sender, EventArgs e)
        {
            Label1.Text = "豬耳朵";
            singleprice = 25;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu65_Click(object sender, EventArgs e)
        {
            Label1.Text = "魯大腸";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu66_Click(object sender, EventArgs e)
        {
            Label1.Text = "肝連";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu67_Click(object sender, EventArgs e)
        {
            Label1.Text = "粉腸";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu68_Click(object sender, EventArgs e)
        {
            Label1.Text = "三層肉";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu69_Click(object sender, EventArgs e)
        {
            Label1.Text = "嘴邊肉";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu70_Click(object sender, EventArgs e)
        {
            Label1.Text = "鯊魚煙";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu71_Click(object sender, EventArgs e)
        {
            Label1.Text = "燙大陸妹";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu72_Click(object sender, EventArgs e)
        {
            Label1.Text = "燙地瓜葉";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu73_Click(object sender, EventArgs e)
        {
            Label1.Text = "燙空心菜";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu74_Click(object sender, EventArgs e)
        {
            Label1.Text = "涼拌韭菜";
            singleprice = 40;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu75_Click(object sender, EventArgs e)
        {
            Label1.Text = "綜合小菜";
            singleprice = 25;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu76_Click(object sender, EventArgs e)
        {
            Label1.Text = "飲料10";
            singleprice = 10;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu77_Click(object sender, EventArgs e)
        {
            Label1.Text = "飲料20";
            singleprice = 20;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu78_Click(object sender, EventArgs e)
        {
            Label1.Text = "飲料35";
            singleprice = 35;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu79_Click(object sender, EventArgs e)
        {
            Label1.Text = "其他5";
            singleprice = 5;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu80_Click(object sender, EventArgs e)
        {
            Label1.Text = "其他10";
            singleprice = 10;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }
        protected void menu81_Click(object sender, EventArgs e)
        {
            Label1.Text = "其他50";
            singleprice = 50;
            Label2.Text = Convert.ToString(singleprice);

            transfersql();
        }

























        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Cookies["TransferValue"].Value = DropDownList1.SelectedValue;

            int menucount = Convert.ToInt32(TextBox1.Text);
            int menuprice = Convert.ToInt32(Label2.Text);
            nowprice = menucount * menuprice;
            Label3.Text = Convert.ToString(nowprice);
            SqlDataSource2.Insert();



            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
                ("Select  金額 From 店內餐點清單 Where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn);
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();

            if (!dr.HasRows)
            {
                tableprice = 0;
                Session["tableprice"] = tableprice.ToString();
                Label_TableMoney.Text = Session["tableprice"].ToString();
            }
            else
            {
                try
                {


                    while (dr.Read())
                    {
                        for (int i = 0; i < dr.FieldCount; i++)
                        {
                            tableprice += Convert.ToInt32(dr[i]);
                            Session["tableprice"] = tableprice.ToString();
                            Label_TableMoney.Text = Session["tableprice"].ToString();

                        }
                    }





                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                    conn.Dispose();
                }
            }




        }



        protected void DeleteMenu_Click(object sender, EventArgs e)
        {
            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
                ("Select  金額 From 店內餐點清單 Where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn);
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();

            if (!dr.HasRows)
            {
                tableprice = 0;
                Session["tableprice"] = tableprice.ToString();
                Label_TableMoney.Text = Session["tableprice"].ToString();
            }
            else
            {
                try
                {


                    while (dr.Read())
                    {
                        for (int i = 0; i < dr.FieldCount; i++)
                        {
                            tableprice += Convert.ToInt32(dr[i]);
                            Session["tableprice"] = tableprice.ToString();
                            Label_TableMoney.Text = Session["tableprice"].ToString();

                        }
                    }





                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                    conn.Dispose();
                }
            }



            Response.Cookies["TransferValue"].Value = DropDownList1.SelectedValue;
            // Response.Redirect("CustomerCheck.aspx");
        }

        protected void addnumber_Click(object sender, EventArgs e)
        {
            mealnumber = Convert.ToInt32(Session["mealnumber"]);
            mealnumber += 1;
            Session["mealnumber"] = mealnumber;
            TextBox1.Text = Session["mealnumber"].ToString();

        }

        protected void lessnumber_Click(object sender, EventArgs e)
        {
            mealnumber = Convert.ToInt32(Session["mealnumber"]);
            mealnumber -= 1;
            Session["mealnumber"] = mealnumber;
            TextBox1.Text = Session["mealnumber"].ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Cookies["TransferValue"].Value = DropDownList1.SelectedValue;

            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
                ("Select  金額 From 店內餐點清單 Where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn);
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();

            if (!dr.HasRows)
            {
                tableprice = 0;
                Session["tableprice"] = tableprice.ToString();
                Label_TableMoney.Text = Session["tableprice"].ToString();
            }
            else
            {
                try
                {


                    while (dr.Read())
                    {
                        for (int i = 0; i < dr.FieldCount; i++)
                        {
                            tableprice += Convert.ToInt32(dr[i]);
                            Session["tableprice"] = tableprice.ToString();
                            Label_TableMoney.Text = Session["tableprice"].ToString();

                        }
                    }





                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                    conn.Dispose();
                }
            }


        }



        //以上桌號鎖定程式碼

    }
}