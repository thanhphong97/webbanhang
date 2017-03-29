<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Layout_NguoiDungMasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebBanHang.index" EnableEventValidation="false" ValidateRequest="false" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Slider-->
    <div class="banner-grid">
        <div id="visual" class="pignose-layerslider">
            <div class="slide-visual">
                <!-- Slide Image Area (1000 x 424) -->
                <ul class="slide-group" style="display: block; width: 9000px; margin-left: -4993.51px; overflow: hidden;">
                    <li class="slide-dummy" style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba3.jpg" alt="Dummy Image"></li>
                    <li style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba1.jpg" alt="Dummy Image"></li>
                    <li style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba2.jpg" alt="Dummy Image"></li>
                    <li style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba3.jpg" alt="Dummy Image"></li>
                    <li class="slide-dummy" style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba1.jpg" alt="Dummy Image"></li>
                    <li class="slide-dummy" style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba2.jpg" alt="Dummy Image"></li>
                    <li class="slide-dummy" style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba3.jpg" alt="Dummy Image"></li>
                    <li class="slide-dummy" style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba1.jpg" alt="Dummy Image"></li>
                    <li class="slide-dummy" style="display: block; float: left;">
                        <img class="img-responsive" src="images/ba2.jpg" alt="Dummy Image"></li>
                </ul>

                <!-- Slide Description Image Area (316 x 328) -->
                <div class="script-wrap">
                    <div class="script-inner">
                        <ul class="script-group" style="display: block; width: 2484px; margin-left: -1322.64px; overflow: hidden;">
                            <li class="slide-dummy" style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa3.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa1.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa2.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa3.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li class="slide-dummy" style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa1.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li class="slide-dummy" style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa2.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li class="slide-dummy" style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa3.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li class="slide-dummy" style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa1.jpg" alt="Dummy Image">
                                </div>
                            </li>
                            <li class="slide-dummy" style="display: block; float: left;">
                                <div class="inner-script">
                                    <img class="img-responsive" src="images/baa2.jpg" alt="Dummy Image">
                                </div>
                            </li>
                        </ul>
                        <div class="slide-pagination completedPagination"><a href="#" class="btn-page on">1번째 슬라이드 보기</a><a href="#" class="btn-page">2번째 슬라이드 보기</a><a href="#" class="btn-page">3번째 슬라이드 보기</a></div>
                    </div>
                    <div class="script-tint"></div>
                    <div class="slide-controller">
                        <a href="#" class="btn-prev">
                            <img src="images/btn_prev.png" alt="Prev Slide"></a>
                        <a href="#" class="btn-play">
                            <img src="images/btn_play.png" alt="Start Slide"></a>
                        <a href="#" class="btn-pause">
                            <img src="images/btn_pause.png" alt="Pause Slide"></a>
                        <a href="#" class="btn-next">
                            <img src="images/btn_next.png" alt="Next Slide"></a>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="slide_tint left">&nbsp;</div>
                <div class="slide_tint right">&nbsp;</div>
            </div>
            <div class="clearfix"></div>
        </div>
        <script type="text/javascript" src="js/pignose.layerslider.js"></script>
        <script type="text/javascript">
            //<![CDATA[
            $(window).load(function () {
                $('#visual').pignoseLayerSlider({
                    play: '.btn-play',
                    pause: '.btn-pause',
                    next: '.btn-next',
                    prev: '.btn-prev'
                });
            });
            //]]>
        </script>

    </div>

    <!--//Slider-->

    <div class="new_arrivals">
        <div class="container-fluid">
            <h3><span>Sản </span>Phẩm</h3>
        </div>
    </div>
    <div class="container">


        <div class="row">
            <asp:Repeater ID="DataList1" runat="server" DataSourceID="SqlDataSourceSanPham">
                <ItemTemplate>
                            <div class="col-md-3">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item">
                                        <img class="pro-image-front" src='<%# Eval("HinhAnh") %>' />
                                        <img class="pro-image-back" src='<%# Eval("HinhAnh") %>' />
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Xem chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">New</span>

                                    </div>
                                    <div class="item-info-product">
                                        <h4><a href="ChiTietSanPham.aspx"><%# Eval("TenSanPham") %></a></h4>
                                        <div class="info-product-price">
                                            <span class="item_price"><%# Eval("DonGia") %>.000</span>
                                            <del>69.710</del>
                                        </div>
                                        <a href="#" class="item_add single-item hvr-outline-out button2">Thêm vào giỏ</a>
                                    </div>
                                </div>
                            </div>  
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceSanPham" runat="server" ConnectionString="Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True" SelectCommand="SELECT * FROM SanPham WHERE TrangThaiSanPham = 1"></asp:SqlDataSource>
    </div>
</asp:Content>

