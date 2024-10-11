using ShopCs.App_data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCs
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            DataDataContext data = new DataDataContext();
            var json = data.Customers.SingleOrDefault(x => x.Email == email && x.Password == password);

            if (json != null)
            {
                Session["username"] = json.FullName;
                Response.Redirect("../../index.aspx");
            }
            else
            {
                Error.Text = "<script>alert('Tài Khoản không chính xác!')</script>";
            }
        }
    }
}