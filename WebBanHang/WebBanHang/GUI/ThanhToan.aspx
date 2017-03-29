<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Layout_NguoiDungMasterPage.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="WebBanHang.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="checkout">
        <div class="container">
            <h3>Giỏ hàng của bạn</h3>
            <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
                <table class="timetable_sub">
                    <thead>
                        <tr>
                            <th>Xóa</th>
                            <th>Sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="rem1">
                            <td class="invert-closeb">
                                <div class="rem">
                                    <a href="#">Xóa</a>
                                </div>
                            </td>
                            <td class="invert-image"><a href="ChiTietSanPham.aspx">
                                <img src="images/w4.png" alt=" " class="img-responsive"></a></td>
                            <td class="invert">
                                <div class="quantity">
                                    <div class="quantity-select">
                                        <div class="entry value"><span>1</span></div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Hand Bag</td>
                            <td class="invert">$45.99</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="checkout-left">

                <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                    <a href="mens.html"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Tiếp tục mua hàng</a>
                </div>
                <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                    <h4>Hóa đơn</h4>
                    <div class="trangthaidonhang"></div>
                    <ul>
                        <li>Hand Bag <i>-</i> <span>$45.99</span></li>
                        <li>Watches <i>-</i> <span>$45.99</span></li>
                        <li>Sandals <i>-</i> <span>$45.99</span></li>
                        <li>Wedges <i>-</i> <span>$45.99</span></li>
                        <li>Total <i>-</i> <span>$183.96</span></li>
                    </ul>
                    <div class="btn btn-success btnthanhtoan-success">Đặt hàng</div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>
