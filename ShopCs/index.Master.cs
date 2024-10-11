using ShopCs.App_data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCs
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadCategories();
                if (Session["username"] != null)
                {
                    LoadAdmin.Text = "                    <a style=\"    text-decoration: none;\" href=\"#\" class=\"icons-btn d-inline-block\" title=\"Đăng Nhập\">\r\n" +
                        " " +Session["username"].ToString()  +
                        "\r\n                    </a>";
                } else
                {
                    LoadAdmin.Text = "                    <a style=\"    text-decoration: none;\" href=\"Login.aspx\" class=\"icons-btn d-inline-block\" title=\"Đăng Nhập\">\r\n" +
                        "                        <i class=\"fa-solid fa-user\"></i>\r\n" +
                        "                    </a>";
                }
            }
        }

        void LoadCategories()
        {
            DataDataContext dataContext = new DataDataContext();
            var categories = (from p in dataContext.Categories select p).ToList();
            var list = "";
            foreach (var category in categories)
            {
                list += $"<li><a><i><img src=\"Image/Logo/{category.logo}\" alt=\"\"/></i><span>{category.CategoryName}</span></a></li>";
            }
            dataCategories.Text = list.ToString();

            var product = (from p in dataContext.Products select p).ToList() ;

            var listproduct = "";
            var count = 0;
            foreach (var products in product)
            {
                if (count == 9)
                {
                    break;
                }
                listproduct += $"<div class=\"card\">\r\n" +
                   $"    <img src=\"{products.ImageUrl}\" alt=\"Product Image\" style=\"width:100%\">\r\n" +
                   $"    <h7>{products.ProductName}</h7>\r\n" +
                   $"    <p class=\"price\">{products.Price} đ</p>\r\n" +
                   $"    <p>Some text about the product...</p>\r\n" +
                   $"<form action=\"ProductDetail.aspx\" method=\"post\">" +
                   $"    <input type=\"hidden\" name=\"id\" value=\"{products.ProductID}\">\r\n" +  // Hidden input chứa ID sản phẩm
                   $"    <p><button type=\"submit\" name=\"Details\">Xem Chi Tiết</button></p>\r\n</form>" +  // Nút submit
                   $"</div>";
                count++;
                //onclick =\"window.location.href='ProductDetail.aspx?id={products.ProductID}' \"
            }
            dataProducts.Text = listproduct.ToString();
        }
    }
}