<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Layout_NguoiDungMasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="WebBanHang.ChiTietSanPham" EnableEventValidation="false"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="chitetsanpham">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="hinhsanpham chitiet">
                        <img src="images/d2.jpg" width="100%" />
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="thongtinsanpham">
                        <div class="tensanpham">
                            <h3>Tên Sản phẩm</h3>
                        </div>
                        <div class="giasanpham">
                            <span class="giamoi">5.0000₫</span> <span class="giacu" style="text-decoration: line-through">100₫ </span>
                        </div>
                        <div class="soluongmua">
                            <span>Số lượng:  </span>
                            <asp:TextBox ID="giatri" runat="server" TextMode="Number" Width="15%" min="1" Max="99"></asp:TextBox>
                            <button type="button" class="btn btn-success btn-sm">
                                <span class="glyphicon glyphicon-edit"></span>Sửa
                            </button>
                             <button type="button" class="btn btn-danger btn-sm">
                                <span class="glyphicon glyphicon-remove"></span>Xóa
                            </button>
                            <div class="tonkho">
                               <span class="glyphicon glyphicon-bullhorn"></span>Còn 63 sản phẩm
                            </div>
                        </div>
                        <div class="mota">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. In non lectus vitae dolor sagittis viverra. Quisque ac orci eget risus euismod lacinia eu in sapien. Vestibulum condimentum massa ut congue elementum. Donec eu feugiat ante, sed suscipit felis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum vehicula ut nulla nec fringilla. Sed fringilla, purus vel accumsan elementum, nibh augue faucibus felis, vel bibendum lorem nibh quis neque. Fusce dictum rhoncus nisi a faucibus.
                        </div>
                        <div class="themvaogio">
                            <div class="occasion-cart">
                                <a href="#" class="item_add hvr-outline-out button2"><span class="glyphicon glyphicon-plus-sign"></span> Thêm vào giỏ hàng</a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="binhluan">
            <div class="row">
                <div class="add-review">
                    <h4>Đánh giá sản phẩm</h4>
                    <div class="tennguoibinhluan">
                        <ul>
                            <li><a href="#">Admin</a></li>
                        </ul>
                    </div>
                    <div class="noidungbinhluan">
                        <p style="color: #999">
                            Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                    </div>
                    

                        <asp:TextBox runat="server" TextMode="MultiLine" BorderColor="#FDA30E" required=""></asp:TextBox>
                        <input type="submit" value="SEND">
                  
                </div>
            </div>
        </div>
    </div>
</asp:Content>
