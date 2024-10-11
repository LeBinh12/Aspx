<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShopCs.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link href="../../Style/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-box">
                <div class="login-image">
                    <asp:Image ID="Image" runat="server" ImageUrl="~/Image/logoVill.png" AlternateText="Description of Image" />
                </div>
                <div class="login-form">
                    <h2>Sign in with</h2>
                    <div class="social-icons">
                        <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
                        <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.linkedin.com"><i class="fab fa-linkedin"></i></a>
                    </div>
                    <p>Or</p>
                    <div class="input-container">
                        <div class="input-box">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Email address" TextMode="Email" required="required"></asp:TextBox>
                        </div>
                        <div class="input-box">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                        </div>
                        <div class="options">
                            <label>
                                <asp:CheckBox ID="chkRememberMe" runat="server" type="CheckBox" />
                                Remember password
                            </label>
                            <a href="#">Forgot password?</a>
                        </div>
                        <asp:Label ID="lblError" runat="server" CssClass="form-label"></asp:Label>
                        <br />
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-login" Text="LOGIN" OnClick="btnLogin_Click" ></asp:Button>

                        <p>Don't have an account? <a href="SignUp.aspx">Register</a></p>
                    </div>
                </div>
            </div>
            <asp:Literal ID="Error" runat="server"></asp:Literal>

            <div class="footer">
                <div class="footer-content">
                    <p>Copyright © 2020. All rights reserved.</p>
                    <div class="footer-icons">
                        <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
                        <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.google.com"><i class="fab fa-google"></i></a>
                        <a href="https://www.linkedin.com"><i class="fab fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
