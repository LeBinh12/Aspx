using ShopCs.App_data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCs
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCategories();
            LoadData();
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
            dataCategoriesDetails.Text = list.ToString();

            var product = (from p in dataContext.Products select p).ToList();

            var listproduct = "";
            var count = 0;
            foreach (var products in product)
            {
                if (count == 9)
                {
                    break;
                }
                listproduct += $"<div class=\"col-lg-4 col-md-6 col-sm-6 pb-1\">\r\n<div class=\"product-item bg-light mb-4\">\r\n<div class=\"card\" style=\"width: 18rem;\">\r\n<img src=\"{products.ImageUrl}\" class=\"card-img-top\" alt=\"...\">\r\n<div class=\"card-body\">\r\n<h5 class=\"card-title\">{products.ProductName}</h5>\r\n<p class=\"card-text\">{products.Price}</p>\r\n<a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\r\n</div>\r\n</div>\r\n</div>\r\n</div>";
                count++;
            }
            //dataProducts.Text = listproduct.ToString();
        }

        void LoadData()
        {
            int idproduct = int.Parse(Request.Form["id"]);
            var dataContext = new DataDataContext();
            var product = dataContext.Products.SingleOrDefault(p => p.ProductID == idproduct);

            var list = $"<form action=\"Cart.aspx\" method=\"post\" class=\"Product-form\">" +
                $"<div class=\"img-card\">\r\n" +
                $"    <img src=\"{product.ImageUrl}\" alt=\"\" id=\"featured-image\">\r\n" +
                $"</div>\r\n" +
                $"<!-- Right side -->\r\n" +
                $"<div class=\"product-info\">\r\n" +
                $"    <h3>{product.ProductName}</h3>\r\n" +
                $"    <h5>Price: {product.Price}</h5>\r\n" +
                $"    <p>{product.Description}</p>\r\n" +
                $"    <div class=\"sizes\">\r\n" +
                $"        <p>Size:</p>\r\n" +
                $"        <select name=\"Size\" id=\"size\" class=\"size-option\">\r\n" +
                $"            <option value=\"xxl\">XXL</option>\r\n" +
                $"            <option value=\"xl\">XL</option>\r\n" +
                $"            <option value=\"medium\">Medium</option>\r\n" +
                $"            <option value=\"small\">Small</option>\r\n" +
                $"        </select>\r\n" +
                $"    </div>\r\n" +
                $"    <div class=\"quantity\">\r\n" +
                $"        <input type=\"number\" name=\"Quantity\" value=\"1\" min=\"1\" max=\"{product.Stock}\">\r\n" + 
                $"        <input type=\"hidden\" name=\"id\" value=\"{product.ProductID}\">\r\n" +  
                $"        <button type=\"submit\" name=\"AddCart\">Add to Cart</button>\r\n" + 
                $"    </div>\r\n" +
                $"</div>\r\n" +
                $"</form>";



            ListData.Text = list.ToString();

        }
    }
}