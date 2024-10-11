<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="ShopCs.ProductDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProductDetail</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="../../Style/style.css" rel="stylesheet" />
    <link href="../../Style/Details.css" rel="stylesheet" />
</head>
<body>
        <div>
        </div>
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
                        <asp:Literal ID="dataCategoriesDetails" runat="server"></asp:Literal>
                        <%--<li><a><i><img src="logoVill.png" alt=""/></i>span>ĐIện thoại </span></a></li>--%>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Breadcrumb -->
        <nav class="d-flex">
            <h6 class="mb-0">
                <a href="" class="text-white-50">Home</a>
                <span class="text-white-50 mx-2">&gt; </span>
                <a href="" class="text-white-50">Library</a>
                <span class="text-white-50 mx-2">&gt; </span>
                <a href="" class="text-white"><u>Data</u></a>
            </h6>
        </nav>
        <!-- Breadcrumb -->
        </div>
        </header>
        <div class="container">
        <section class="product-container">
        <!-- left side -->
        <asp:Literal ID="ListData" runat="server"></asp:Literal>
    </section>
            </div>
        <form id="form1" runat="server">

        <asp:PlaceHolder ID="ContentPlaceHolder" runat="server"></asp:PlaceHolder>

    </form>
</body>
</html>
