using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHang.BUS;
using WebBanHang.DTO;

namespace WebBanHang.GUI.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        private SanPhamBUS _SanPhamBUS = new SanPhamBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnThemSanPham_Click(object sender, EventArgs e)
        {         
            SanPhamDTO sanpham = new SanPhamDTO()
            {
                TenSanPham = txtTenSanPham.Text,
                MoTa = CKEditor_mota.Text,
                DonGia = Convert.ToInt32(txtDonGia.Text),
                SoLuong = Convert.ToInt32(txtSoLuong.Text),
                LoaiSanPham = Convert.ToInt32(Request.Form["SelectLoaiSanPham"])
            };
           
            string fileName = "../imageproduct/" + FileHinhDaiDien.FileName;
            string filePath = MapPath(fileName);
            FileHinhDaiDien.SaveAs(filePath);
            sanpham.HinhAnh = fileName.Replace("../","");
            bool bSanPhamMoi = _SanPhamBUS.TaoSanPhamMoi(sanpham);
            if( bSanPhamMoi == true)
            {
                Response.Write("<script>alert('Thêm sản phẩm thành công'); location.href = 'ThemSanPham.aspx'</script>");
                  
            }
         
            
        }
    }
}