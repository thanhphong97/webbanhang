using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanHang.DTO
{
    public class SanPhamDTO
    {
        // Cung cấp và cập nhật các giá trị của Sản Phẩm
        public string TenSanPham { get; set; }
        public string MoTa { get; set; }
        public string HinhAnh { get; set; }
        public int SoLuong { get; set; }
        public int DonGia { get; set; }
        public int LoaiSanPham { get; set; }

        public string MaSanPham { get; set; }
        public int TrangThaiSanPham { get; set; }
    }
}