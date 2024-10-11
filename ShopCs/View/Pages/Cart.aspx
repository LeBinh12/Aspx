<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShopCs.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Style/style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <title>Giỏ Hàng</title>
    <link href="../../Style/Cart.css" rel="stylesheet" />
</head>
<body>
    <div class="hearder-body">
        <div class="container">
            <div class="align-items-center">
                <div class="logo">
                    <div class="style-logo">
                        <a href="index.aspx">
                            <img src="../../Image/logoVill.png" style="width: 100px" />
                        </a>
                    </div>
                </div>
                <div class="main-nav">
                    <nav class="navigation">
                        <ul class="site-menu">
                            <li><a href="#" title="Trang Chủ">Home</a></li>
                            <li><a href="#" title="Sản Phẩm Giảm Giá">Sale</a></li>
                            <li><a href="#" title="Sản Phẩm Mới">Mới</a></li>
                            <li><a href="#" title="Thông tin Shop">Tin Tức</a></li>

                        </ul>
                    </nav>
                </div>
                <div class="rightIconsBar">
                    <div class="icons-btn-search d-inline-block">
                        <input type="text" placeholder="Tìm Kiếm Sản Phẩm..." />
                        <a href="#" title="Tìm Kiếm Sản Phẩm"><i class="fa-solid fa-magnifying-glass"></i></a>
                    </div>
                    <a href="#" class="icons-btn d-inline-block" title="Đăng Nhập"><i class="fa-solid fa-user"></i></a>
                    <a href="#" class="icons-btn d-inline-block bag" title="Giỏ Hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span class="number" id="NoOfItemsInCart">0</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

<%--        menu--%>
        <div class="container">
            <div class="hearder-menu">
                <div>
                <ul class="main-menu">
                    <asp:Literal id="dataCategories" runat="server"></asp:Literal>
                    <%--<li><a><i><img src="logoVill.png" alt=""/></i>span>ĐIện thoại </span></a></li>--%>
                </ul>
                    </div>
            </div>
        </div>

<%--<%--    Shop Cart   --%>

    <div class="container">
<%--        Dòng thông tin page--%>
        <div class="row">
            <div class="col-sm-12">
                <div class="breadcrumb">
                    <a href="index.aspx">
                        <i class="fa-solid fa-house"></i>
                    </a>
                    <span class="mx-2">/</span>
                    <strong class="text-black">Thông tin giỏ hàng</strong>
                </div>
            </div>
        </div>
<%--        Dòng Chi tiết giỏ hàng--%>
        <div class="row">
<%--            Hàng Thông tin giỏ hàng--%>
            <div class="col-sm-12 col-md-6">
                <h3>Chi Tiết Đơn Hàng</h3>
                <table class="table">
                    <tbody>
                        <tr>
                            <td style="width: 100px; padding-left: 0; padding-right: 0;">
                                <img src=".. / .. / Image /logoVill.png" style="width: 100px" />
                                <div>
                                    <form action="Cart.aspx" method="post">
                                        <input type="hidden" name="ID" value="0" />
                                        <button type="submit" name="DeleteCart"><i class="fa-solid fa-trash"></i>Xóa</button>
                                    </form>
                                </div>
                            </td>
                            <td style="padding-left: 0; padding-right: 0;">
                                <p class="md-1">
                                    <a href="#" style="font-size: 14px; color: #444;">Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm Hút Biểu Tượng Dáng Rộng Giá Tốt No Style M14 Vol 24 - Xanh Dương Nhạt, L</a>
                                </p>
                                <p class="md-0">
                                    <span style="color: #444;">Số Lượng
                                        <b>1</b>
                                        * 
                                        <span style="color: #444;">100,000 đ
                                        </span>
                                    </span>
                                </p>
                                <p>
                                    <span style="color: #444;">= 99,000 đ
                                    </span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; padding-left: 0; padding-right: 0;">
                                <img src=".. / .. / Image /logoVill.png" style="width: 100px" />
                                <div>
                                    <form action="Cart.aspx" method="post">
                                        <input type="hidden" name="ID" value="0" />
                                        <button type="submit" name="DeleteCart"><i class="fa-solid fa-trash"></i>Xóa</button>
                                    </form>
                                </div>
                            </td>
                            <td style="padding-left: 0; padding-right: 0;">
                                <p class="md-1">
                                    <a href="#" style="font-size: 14px; color: #444;">Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm Hút Biểu Tượng Dáng Rộng Giá Tốt No Style M14 Vol 24 - Xanh Dương Nhạt, L</a>
                                </p>
                                <p class="md-0">
                                    <span style="color: #444;">Số Lượng
                                        <b>1</b>
                                        * 
                                        <span style="color: #444;">100,000 đ
                                        </span>
                                    </span>
                                </p>
                                <p>
                                    <span style="color: #444;">= 99,000 đ
                                    </span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; padding-left: 0; padding-right: 0;">
                                <img src=".. / .. / Image /logoVill.png" style="width: 100px" />
                                <div>
                                    <form action="Cart.aspx" method="post">
                                        <input type="hidden" name="ID" value="0" />
                                        <button type="submit" name="DeleteCart"><i class="fa-solid fa-trash"></i>Xóa</button>
                                    </form>
                                </div>
                            </td>
                            <td style="padding-left: 0; padding-right: 0;">
                                <p class="md-1">
                                    <a href="#" style="font-size: 14px; color: #444;">Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm Hút Biểu Tượng Dáng Rộng Giá Tốt No Style M14 Vol 24 - Xanh Dương Nhạt, L</a>
                                </p>
                                <p class="md-0">
                                    <span style="color: #444;">Số Lượng
                                        <b>1</b>
                                        * 
                                        <span style="color: #444;">100,000 đ
                                        </span>
                                    </span>
                                </p>
                                <p>
                                    <span style="color: #444;">= 99,000 đ
                                    </span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; padding-left: 0; padding-right: 0;">
                                <img src=".. / .. / Image /logoVill.png" style="width: 100px" />
                                <div>
                                    <form action="Cart.aspx" method="post">
                                        <input type="hidden" name="ID" value="0" />
                                        <button type="submit" name="DeleteCart"><i class="fa-solid fa-trash"></i>Xóa</button>
                                    </form>
                                </div>
                            </td>
                            <td style="padding-left: 0; padding-right: 0;">
                                <p class="md-1">
                                    <a href="#" style="font-size: 14px; color: #444;">Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm Hút Biểu Tượng Dáng Rộng Giá Tốt No Style M14 Vol 24 - Xanh Dương Nhạt, L</a>
                                </p>
                                <p class="md-0">
                                    <span style="color: #444;">Số Lượng
                                        <b>1</b>
                                        * 
                                        <span style="color: #444;">100,000 đ
                                        </span>
                                    </span>
                                </p>
                                <p>
                                    <span style="color: #444;">= 99,000 đ
                                    </span>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
<%--            Hàng Thông tin đặt hàng--%>
            
            <div class="col-sm-12 col-md-6">
                <h3>Người Mua Hàng</h3>
                <form id="form1" action="Cart.aspx" method="post" runat="server">

                    <div class="form-group">
                        <label for="txtCustomerName">Tên</label>
                        <input type="text" class="form-control" id="txtCustomerName" name="txtCustomerName" placeholder="Tên Người Mua Hàng" />
                    </div>
                    <div class="form-group">
                        <label for="txtCustomerEmail">Email</label>
                        <input type="email" class="form-control" id="txtCustomerEmail" name="txtCustomerEmail" placeholder="Email Người Mua Hàng" />
                    </div>
                    <div class="form-group">
                        <label for="txtCustomerPhone">Số Điện Thoại</label>
                        <input type="tel" class="form-control" id="txtCustomerPhone" name="txtCustomerPhone" placeholder="Số Điện Thoại Người Mua Hàng" />
                    </div>
                    <div class="form-group">
                        <label for="ddlPaymentMethod">Phương Thức Thanh Toán</label>
                        <asp:DropDownList ID="ddlPaymentMethod" CssClass="form-control" runat="server"></asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label for="txtCustomerNote">Ghi Chú</label>
                        <textarea rows="2" class="form-control" id="txtCustomerNote" name="txtCustomerNote" placeholder="Ghi chú cho đơn hàng"></textarea>
                    </div>
                    <button class="btn btn-info" style="width: 100%">Đặt Hàng</button>
                </form>

            </div>
        <div>
            <asp:Literal ID="listData" runat="server"></asp:Literal>
        </div>
        </div>
    </div>

    
</body>
</html>
