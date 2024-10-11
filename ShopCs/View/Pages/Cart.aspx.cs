using ShopCs.App_data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCs
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCategories();
            LoadLoai();
        }





        void LoadCategories()
        {
            DataDataContext dataContext = new DataDataContext();
            var categories = (from p in dataContext.Categories select p).ToList();
            var list = "";
            foreach (var category in categories)
            {
                list += $"<li><a><i><img src=\".. / .. / Image /{category.logo}\" alt=\"\"/></i><span>{category.CategoryName}</span></a></li>";
            }
            dataCategories.Text = list.ToString();
        }
        void LoadLoai()
        {
            DataDataContext dataContext = new DataDataContext();
            var categories = (from p in dataContext.Categories select p).ToList();
            foreach (var category in categories)
            {
                ddlPaymentMethod.Items.Add(category.CategoryName);
            }
        }

        void LoadPage()
        {

            string list = "";
            if (Request.Form["AddCart"] != null)
            {
                string size = Request.Form["Size"];
                int quantity = int.Parse(Request.Form["Quantity"]);
                int id = int.Parse(Request.Form["id"]);
                list += "Size: " + size + " số lượng: " + quantity + " mã: " + id;
            }
            listData.Text = list.ToString();
        }
    }
}