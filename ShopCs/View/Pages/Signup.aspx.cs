using Microsoft.Win32;
using ShopCs.App_data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCs
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string name = txtYourName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string city = txtCity.Text;
            string password = txtPassword.Text;
            string confirm = txtConfirmPassword.Text;
            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(phone)
                    && !string.IsNullOrEmpty(address) && !string.IsNullOrEmpty(city) && !string.IsNullOrEmpty(password))
            {
                if(password == confirm)
                {
                    DataDataContext data = new DataDataContext();
                    var existingCustomer = data.Customers.SingleOrDefault(p => p.Email == email);

                    if (existingCustomer == null)
                    {
                        Customer customer= new Customer();
                        customer.Email = email;
                        customer.Address = address;
                        customer.City = city;
                        customer.Password = password;
                        customer.FullName= name;
                        customer.PhoneNumber= phone;
                        try
                        {
                            data.Customers.InsertOnSubmit(customer);
                            data.SubmitChanges();
                            lblError.Text = "<script>\r\n            alert('Đã thêm thành công!');\r\n       " +
                            "window.location.href = 'Login.aspx' </script>";
                        } catch (Exception ex)
                        {
                            lblError.Text = "<p style='color:red;'>Đã có lỗi xảy ra trong quá trình đăng ký. Vui lòng thử lại.</p>";
                            // Optional: Ghi log lỗi nếu cần
                            Console.WriteLine(ex.Message); ;
                        }
                    } else
                    {
                        lblError.Text = "<p style='color:red;'>Tài Khoản Đã Tồn Tại</p>"; ;
                    }
                }
                else
                {
                    lblError.Text = "<p style = 'color:red;'> Mật Khẩu Không trùng Khớp </p> ";
                }
            } else
            {
                lblError.Text = "<p style='color:red;'>Bạn Cần Nhập Đầy Đủ Thông tin</p>";
            }

        }
    }
}