using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantCountSystem
{
    public partial class Checkout : System.Web.UI.Page
    {
        static string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["resuseConnectionString"].ConnectionString;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(connString);
        System.Data.SqlClient.SqlConnection conn1 = new System.Data.SqlClient.SqlConnection(connString);
        int tableprice;


        protected void Page_Load(object sender, EventArgs e)
        {
            conn1.Open();
            System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand
                ("Select  金額 From 店內餐點清單 Where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn1);
            System.Data.SqlClient.SqlDataReader dr1 = cmd1.ExecuteReader();

            if (!dr1.HasRows)
            {
                tableprice = 0;
                Session["tableprice"] = tableprice.ToString();
                Label_TableMoney.Text = Session["tableprice"].ToString();
            }
            else
            {
                try
                {
                    while (dr1.Read())
                    {
                        for (int i = 0; i < dr1.FieldCount; i++)
                        {
                            tableprice += Convert.ToInt32(dr1[i]);
                            Session["tableprice"] = tableprice.ToString();
                            Label_TableMoney.Text = Session["tableprice"].ToString();

                        }

                    }


                }
                finally
                {
                    cmd1.Dispose();
                    conn1.Close();
                    conn1.Dispose();
                }

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            String strSQL = " Update  店內餐點清單 set 是否結帳=1 where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0 ";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
                ("Update  店內餐點清單 set 是否結帳=1 where 用餐方式='" + DropDownList1.SelectedValue + "'AND 是否結帳=0", conn);
            System.Data.SqlClient.SqlCommand sqlcommand = new System.Data.SqlClient.SqlCommand(strSQL, conn);
            sqlcommand.ExecuteNonQuery();
            cmd.Dispose();
                conn.Close();
                conn.Dispose();
            Response.Write("<script>alert('結帳完成!');location.href='Default.aspx';</script>");
        }
    }
}