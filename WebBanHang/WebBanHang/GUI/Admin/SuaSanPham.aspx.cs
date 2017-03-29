using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHang.BUS;
using WebBanHang.DTO;
using System.IO;
namespace WebBanHang.GUI.Admin
{
    public partial class SuaSanPham : System.Web.UI.Page
    {
        private SanPhamBUS _SanPhamBUS = new SanPhamBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            string sMaSanPham = Request["MaSP"];
            string sTenSanPham = Request.Form["txtTenSanPham"];
            string sMoTa = HttpUtility.HtmlEncode(Request.Form["txtMota"]);
            string sMoTaCapNhat = HttpUtility.HtmlDecode(sMoTa);
            string sSoLuong = Request.Form["txtSoLuong"];
            string sDonGia = Request.Form["txtDongia"];
            string sLoaiSanPham = Request.Form["SelectLoaiSanPham"];
            SanPhamDTO sanpham = new SanPhamDTO()
            {
                MaSanPham = sMaSanPham,
                TenSanPham = sTenSanPham,
                MoTa = sMoTaCapNhat,
                SoLuong = Convert.ToInt32(sSoLuong),
                DonGia = Convert.ToInt32(sDonGia),
                LoaiSanPham = Convert.ToInt32(sLoaiSanPham)

            };
            
            Page.Form.Enctype = "multipart/form-data";
            // Lấy ra dữ liệu của file 
            HttpPostedFile myFile = System.Web.HttpContext.Current.Request.Files[0];
            string filename = "../imageproduct/" + myFile.FileName;
            string filePath = MapPath(filename);
            myFile.SaveAs(filePath);
            sanpham.HinhAnh = filename.Replace("../", "");
            bool bSuaSanPham = _SanPhamBUS.SuaSanPham(sanpham);
            if (bSuaSanPham == true)
            {
                Response.Write("<script>alert('Sửa sản phẩm thành công'); location.href = 'DanhSachSanPham.aspx'</script>");

            }
        }

        
    }
}