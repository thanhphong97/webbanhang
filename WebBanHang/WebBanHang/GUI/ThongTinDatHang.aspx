<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Layout_NguoiDungMasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinDatHang.aspx.cs" Inherits="WebBanHang.ThongTinDatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="containerdathang">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Họ và tên:</label>
                        <input type="email" class="form-control" id="ten">
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email">
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ:</label>
                        <input type="email" class="form-control" id="diachi">
                    </div>
                    <div class="form-group">
                        <label>Ghi chú:</label>
                        <textarea class="form-control" rows="5" id="ghichu"></textarea>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-warning" style="width: 100%"><h3>Đặt hàng</h3></button>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
</asp:Content>
