<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="ShopCs.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Signup.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
            <div class="illustration-section">
                <asp:Image ID="IllustrationImage" runat="server" ImageUrl="~/Image/logoVill.png" AlternateText="Illustration" />
            </div>
            <div class="form-section">
                <h2>Sign up</h2>
                <%--                Tên Người Dùng--%>
                <div class="input-group">
                    <div class="input-wrapper">
                        <label for="name"><i class="fas fa-user"></i></label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" placeholder="Phone" />
                    </div>
                </div>

                <asp:Button ID="btnReset" runat="server" Text="REGISTER" CssClass="register-btn" OnClick="btnReset_Click" />

                <asp:Literal ID="lblError1" runat="server"></asp:Literal>
                <p>Have already an account? <a href="Login.aspx">Login here</a></p>
            </div>
        </div>
    </form>
</body>
</html>
