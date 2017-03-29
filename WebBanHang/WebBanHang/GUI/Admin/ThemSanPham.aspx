<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="WebBanHang.GUI.Admin.Admin" %>

<%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="themsanpham">
        <!--Tên sản phẩm-->
        <div class="row">

            <div class="col-md-2">
                <p class="psanpham">Tên sản phẩm</p>
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtTenSanPham" runat="server" Width="100%" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div class="col-md-2"></div>
        </div>
        <!--Mô tả sản phẩm-->
        <div class="row">

            <div class="col-md-2">
                <p class="psanpham">Mô tả sản phẩm</p>
            </div>
            <div class="col-md-8">
                <CKEditor:CKEditorControl ID="CKEditor_mota" Height="300px" Width="100%" runat="server" CssClass="form-control"></CKEditor:CKEditorControl>
            </div>
            <div class="col-md-2"></div>
        </div>
        <!--Hình đại diện-->
        <div class="row">
            <div class="col-md-2">
                <p class="psanpham">Hình đại diện</p>
            </div>
            <div class="col-md-8">
                <asp:FileUpload ID="FileHinhDaiDien" runat="server" CssClass="form-control" Width="50%" required="" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <!-- Số lượng -->
        <div class="row">

            <div class="col-md-2">
                <p class="psanpham">Số lượng</p>
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtSoLuong" runat="server" Width="20%" TextMode="Number" Min="1" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div class="col-md-2"></div>
        </div>
        <!--Đơn giá-->
        <div class="row">

            <div class="col-md-2">
                <p class="psanpham">Đơn giá</p>
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="txtDonGia" runat="server" Width="20%" CssClass="form-control" required="" TextMode="Number" Min="1"></asp:TextBox>
            </div>
            <div class="col-md-2"></div>
        </div>
        <!--Loại sản phẩm-->
        <div class="row">
            <div class="col-md-2">
                <p class="psanpham">Loại sản phẩm</p>
            </div>
            <div class="col-md-8">

                <select id="SelectLoaiSanPham" name="SelectLoaiSanPham" class="form-control" style="width: 30%">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <option value='<%# Eval("MaLoai") %>'><%# Eval("TenLoai") %></option>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True" SelectCommand="SELECT * FROM LoaiSanPham"></asp:SqlDataSource>
                </select>

                <div class="col-md-2"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnThemSanPham" runat="server" Text="Thêm sản phẩm" CssClass="btn btn-success" OnClick="btnThemSanPham_Click" />
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>

</asp:Content>
