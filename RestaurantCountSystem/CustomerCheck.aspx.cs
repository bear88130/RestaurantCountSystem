﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantCountSystem
{
    public partial class CustomerCheck : System.Web.UI.Page
    {
        string choiceway;


        protected void Page_Load(object sender, EventArgs e)
        {
         if (Request.Cookies["TransferValue"] != null)
         {
               choiceway=Request.Cookies["TransferValue"].Value;
         }

        }
    }
}