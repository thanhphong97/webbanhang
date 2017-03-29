<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="DanhSachSanPham.aspx.cs" Inherits="WebBanHang.GUI.Admin.DanhSachSanPham" ValidateRequest="false" %>
<%@ Register TagPrefix="cc1" Namespace="SiteUtils" Assembly="CollectionPager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <h2>Danh sách sản phẩm</h2>

        <table class="table table-bordered table-hover danhsachsanpham" style="text-align: center;">
            <thead>
                <tr>
                    <th style="text-align: center;">Tên sản phẩm</th>
                    <th style="text-align: center;">Số lượng</th>
                    <th style="text-align: center;">Đơn giá</th>
                    <th style="text-align: center;">Loại sản phẩm</th>
                    <th style="text-align: center;">Sửa</th>
                    <th style="text-align: center;">Xóa</th>
                </tr>
            </thead>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td><%# Eval("TenSanPham") %></td>
                            <td><%# Eval("SoLuong") %></td>
                            <td><%# Eval("DonGia") %></td>
                            <td><%# Eval("TenLoai") %></td>
                            <td>                 
                               <asp:LinkButton ID="btnSuaSPLink" runat="server"  CssClass="btn btn-success btn-xs" role="button" OnCommand="btnSuaSPLink_Command" CommandArgument='<%# Eval("MaSanPham") %>'><span class="glyphicon glyphicon-edit"></span></asp:LinkButton>      
                            </td>
                            <td>
                                <asp:LinkButton ID="btnXoaSPLink" runat="server"  CssClass="btn btn-danger btn-xs" role="button" OnCommand="btnXoaSP_Command" CommandArgument='<%# Eval("MaSanPham") %>'><span class="glyphicon glyphicon-remove"></span></asp:LinkButton>                            

                            </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:Repeater>
            
        </table>
          <cc1:CollectionPager ID="pager" runat="server" PageSize="3" ></cc1:CollectionPager>

    </div>
</asp:Content>
