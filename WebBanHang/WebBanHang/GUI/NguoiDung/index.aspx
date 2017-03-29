<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebBanHang.KhachHang.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <script src="../js/jquery-2.1.4.min.js"></script>
    <script src="../js/bootstrap-3.1.1.min.js"></script>
    <link href="cssNguoidung.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="containernguoidung">
            <div class="container">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3>Xin chào <span>ahihi</span> !</h3>
                            </div>
                            <div class="panel-body">
                                <div class="thongtin">
                                    <div class="tenkhachhang">
                                        Tên khách hàng: <span>Vũ Tuấn Kiệt</span>
                                    </div>
                                    <div class="emailkhachang">
                                        Email: <span>Tuankiet@gmail.com</span>
                                    </div>
                                    <div class="diachikhachhang">
                                        Địa chỉ: <span>Bình Thạnh</span>
                                    </div>
                                    <div class="sdtkhachhang">
                                        Số điện thoại: <span>113</span>
                                    </div>
                                    <div class="chucnangnguoidung">
                                        <button type="button" class="btn btn-success btn-sm">
                                            <span class="glyphicon glyphicon-edit"></span> Sừa thông tin
                                        </button>
                                        <button type="button" class="btn btn-warning btn-sm">
                                            <span class="glyphicon glyphicon-lock"></span> Đổi mật khẩu
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm">
                                            <span class="glyphicon glyphicon-lock"></span> Đăng xuất
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
