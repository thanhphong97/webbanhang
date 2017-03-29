<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="SuaSanPham.aspx.cs" Inherits="WebBanHang.GUI.Admin.SuaSanPham" %>

<%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div class="suasanpham">
                <!--Tên sản phẩm-->
                <div class="row">
                    <div class="col-md-2">
                        <p class="psanpham">Tên sản phẩm</p>
                    </div>
                    <div class="col-md-8">
                        <input name="txtTenSanPham" style="width: 100%" class="form-control" required="" value='<%# Eval("TenSanPham") %>'></input>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <!--Mô tả sản phẩm-->
                <div class="row">

                    <div class="col-md-2">
                        <p class="psanpham">Mô tả sản phẩm</p>
                    </div>
                    <div class="col-md-8">

                        <textarea id="txtMota" name="txtMota" cols="80" rows="10">
                              <%# Eval("MoTa") %>
                        </textarea>
                         <script>
                             CKEDITOR.replace('txtMota');
                        </script>    
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <!--Hình đại diện-->
                <div class="row">
                    <div class="col-md-2">
                        <p class="psanpham">Hình đại diện</p>
                    </div>
                    <div class="col-md-8">
                     
                        <input type="file" id="UploadedFile" name="UploadedFile" class="form-control" runat="server" style="width:50%" required="required" data-ajax="false" />
                        
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <!-- Số lượng -->
                <div class="row">

                    <div class="col-md-2">
                        <p class="psanpham">Số lượng</p>
                    </div>
                    <div class="col-md-8">
                        
                        <input type="number" name="txtSoLuong" style="width:20%" min="1" class="form-control" required="required" value='<%# Eval("SoLuong") %>' />
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <!--Đơn giá-->
                <div class="row">

                    <div class="col-md-2">
                        <p class="psanpham">Đơn giá</p>
                    </div>
                    <div class="col-md-8">
                        
                         <input type="number" name="txtDongia" style="width:20%" min="1" class="form-control" required="required" value='<%# Eval("DonGia") %>' />
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
                        <asp:Button ID="btnCapnhat" runat="server" Text="Cập nhật sản phẩm" CssClass="btn btn-success" OnClick="btnCapnhat_Click" />
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True" SelectCommand="SELECT * FROM SanPham WHERE MaSanPham = @MaSP">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSP" QueryStringField="MaSP" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


