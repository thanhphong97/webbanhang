<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Layout_NguoiDungMasterPage.Master" AutoEventWireup="true" CodeBehind="LoaiSanPham.aspx.cs" Inherits="WebBanHang.ThoiTrangNam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div class="new_arrivals">
                <div class="container">
                    <h3><%# Eval("TenLoai") %></h3>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True" SelectCommand="SELECT TenLoai FROM LoaiSanPham WHERE MaLoai = @MaLoaiSP">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaLoaiSP" QueryStringField="MaLoaiSP" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container">
        <div class="row">
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-md-3 product-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src='<%# Eval("HinhAnh") %>' alt="" class="pro-image-front">
                                <img src='<%# Eval("HinhAnh") %>' alt="" class="pro-image-back">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                <span class="product-new-top">new</span>
                            </div>
                            <div class="item-info-product ">
                                <h4><a href="single.html"><%# Eval("TenSanPham") %></a></h4>
                                <div class="info-product-price">
                                    <span class="item_price"><%# Eval("DonGia") %>.000</span>
                                    <del>$69.71</del>
                                </div>
                                <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True" SelectCommand="SELECT * FROM SanPham WHERE TrangThaiSanPham = 1 AND LoaiSanPham = @MaLoaiSP ">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaLoaiSP" QueryStringField="MaLoaiSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
