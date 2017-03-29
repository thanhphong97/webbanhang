<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SlideShow.aspx.cs" Inherits="WebBanHang.Admin.SlideShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <script src="../js/jquery-2.1.4.min.js"></script>
    <script src="../js/bootstrap-3.1.1.min.js"></script>
    <link href="cssAdmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="containeradmin">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-8">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3>Xin chào Admin !</h3>
                                </div>

                                <div class="panel-body">
                                    <div class="adminmenu">
                                        <ul class="list-group">
                                            <li class="list-group-item">Thêm sản phẩm</li>
                                            <li class="list-group-item">Quản lý Slide show</li>
                                            <li class="list-group-item">Third item</li>
                                        </ul>
                                    </div>
                                    <div class="adminchucnang">Upload ảnh lên slideshow</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
