using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanHang.DAO;
using WebBanHang.DTO;

namespace WebBanHang.BUS
{
    public class SanPhamBUS
    {
        // xử lý dữ liệu trước khi đẩy dữ liệu tới GUI
        private SanPhamDAO _SanPhamDAO = new SanPhamDAO();
        
        public bool TaoSanPhamMoi(SanPhamDTO sanpham)
        {
            int count = _SanPhamDAO.DemSanPham();
            sanpham.MaSanPham = string.Format("SP{0}", (count + 1).ToString());
            return _SanPhamDAO.TaoSanPhamMoi(sanpham);
        }

        public bool XoaSanPham(SanPhamDTO sanpham)
        {
            return _SanPhamDAO.XoaSanPham(sanpham);
        }
        
        public bool SuaSanPham(SanPhamDTO sanpham)
        {
            return _SanPhamDAO.SuaSanPham(sanpham);
        }

       
    }
}