using ShopCs.App_data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCs
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }


        private bool IsEmailExist(string Email)
        {

            DataDataContext data = new DataDataContext();
            var query = data.Customers.SingleOrDefault(p => p.Email == Email);
            bool check = false;
            if(query != null)
            {
                check = true;
            } else
            {
                check = false;
            }

            return check;
        }


        // ca
        private void UpdatePasswordInDatabase(string email, string newPassword)
        {
            DataDataContext data = new DataDataContext();
            var update = data.Customers.SingleOrDefault(p => p.Email == email);
            
            update.Password = newPassword;

            data.SubmitChanges();

        }

        // TTaoj mật khẩu ngẫu nhiễn
        private string GenerateRandomPassword(int length)
        {
            // Tạo mật khẩu ngẫu nhiên
            const string validChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            Random random = new Random();
            char[] newPassword = new char[length];

            for (int i = 0; i < length; i++)
            {
                newPassword[i] = validChars[random.Next(validChars.Length)];
            }

            return new string(newPassword);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            if (IsEmailExist(email))
            {
                // Tạo mật khẩu mới ngẫu nhiên
                string newPassword = GenerateRandomPassword(8);

                // Cập nhật mật khẩu mới vào cơ sở dữ liệuliệu
                UpdatePasswordInDatabase(email, newPassword);

                lblError1.Text = "<script>\r\n            alert('Mặt Khẩu Bạn là " + newPassword + "');\r\n  " +
                    "window.location.href = 'Login.aspx' </script>";

                // Gửi mật khẩu mới qua email
            }
            else
            {
                lblError1.Text = "<script>\r\n            alert(' Lỗi ');\r\n " +
                    "window.location.href = 'Login.aspx' </script>";
            }

        }
    }
}