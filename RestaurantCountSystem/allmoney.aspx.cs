using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantCountSystem
{
    public partial class allmoney : System.Web.UI.Page
    {


        static string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["resuseConnectionString"].ConnectionString;
        System.Data.SqlClient.SqlConnection conn1 = new System.Data.SqlClient.SqlConnection(connString);
        int tableprice;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime strDate = DateTime.Parse(TextBox1.Text);
            DateTime endDate = DateTime.Parse(TextBox2.Text);
            Session["str"] = strDate.ToString();
            Session["end"] = endDate.ToString();
            conn1.Open();
            System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand
                ("Select  金額 From 店內餐點清單 Where 時間 BETWEEN'" + String.Format("{0:yyyy/MM/dd HH:mm}", strDate) + "' AND '"
                + String.Format("{0:yyyy/MM/dd HH:mm}", endDate) + "'", conn1);
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
    }
}