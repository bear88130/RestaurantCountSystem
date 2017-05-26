using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantCountSystem
{
    public partial class Print : System.Web.UI.Page
    {
        int tableprice;
        static string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["resuseConnectionString"].ConnectionString;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(connString);
        System.Data.SqlClient.SqlConnection conn1 = new System.Data.SqlClient.SqlConnection(connString);
        System.Data.SqlClient.SqlConnection conn2 = new System.Data.SqlClient.SqlConnection(connString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("myPrint", "Print.js");
            Label2.Text = DropDownList1.SelectedValue;


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

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn1.Open();
            String strSQL = " Update  店內餐點清單 set 是否出餐=1 where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0 ";
            System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand
                ("Update  店內餐點清單 set 是否出餐=1 where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn1);
            System.Data.SqlClient.SqlCommand sqlcommand = new System.Data.SqlClient.SqlCommand(strSQL, conn1);
            sqlcommand.ExecuteNonQuery();
            cmd1.Dispose();
            conn1.Close();
            conn1.Dispose();
            Response.Write("<script>alert('確認完成!');location.href='Print.aspx';</script>");

        }

    }
}