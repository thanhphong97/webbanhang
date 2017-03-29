<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhapDangKy.aspx.cs" Inherits="WebBanHang.DangNhapDangKy" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="UTF-8" />
    <title>Flat Login Form 3.0</title>
    <link href="Layout_NguoiDung/cssDangNhap_dangKy/css/styleDangNhapDangKy.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Form Mixin-->
            <!-- Input Mixin-->
            <!-- Button Mixin-->
            <!-- Pen Title-->
            <div class="pen-title">
            </div>
            <!-- Form Module-->
            <div class="module form-module">
                <div class="toggle">
                    <i class="fa fa-times fa-pencil"></i>
                    <div class="tooltip">Bấm vào</div>
                </div>
                <div class="form">
                    <h2 style="font-size: 35px">Đăng nhập</h2>
                    <asp:TextBox ID="txtTaiKhoan_login" runat="server" placeholder="Tài khoản" required=""></asp:TextBox>
                    <asp:TextBox ID="txtMatKhau_login" runat="server" placeholder="Mật khẩu" TextMode="Password" required=""></asp:TextBox>
                   <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-success  " OnClick="btnLinkDangNhap_Click" />
                </div>
                
                <div class="form">
                    <h2 style="font-size: 35px">Đăng ký</h2>
                    <asp:TextBox ID="txtTaiKhoan_reg" runat="server" placeholder="Tài khoản" required=""></asp:TextBox>
                    <asp:TextBox ID="txtMatKhau_reg" runat="server" placeholder="Mật khẩu" required=""></asp:TextBox>
                    <asp:TextBox ID="txtEmail_reg" runat="server" placeholder="Email" AutoCompleteType="Email"></asp:TextBox>
                    <asp:TextBox ID="txtSDT_reg" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                    
                </div>
                <div class="cta"><a href="http://andytran.me">Quên mật khẩu ?</a></div>
            </div>
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
            <script src="Layout_NguoiDung/cssDangNhap_dangKy/js/index.js"></script>
        </div>
    </form>
</body>
</html>
