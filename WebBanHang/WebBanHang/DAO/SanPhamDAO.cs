using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanHang.DTO;
using System.Data.SqlClient;
using System.Data;

namespace WebBanHang.DAO
{

    public class SanPhamDAO
    {
        // Xử lý ở cơ sở dữ liệu
        DataProvider _provider = new DataProvider();
        public bool TaoSanPhamMoi(SanPhamDTO sanpham)
        {
            int row = 0;
            {
                _provider.Connect();
               
                    string sThemSanPham = string.Format("INSERT INTO SanPham(MaSanPham,TenSanPham,MoTa,HinhAnh,SoLuong,DonGia,LoaiSanPham,TrangThaiSanPham) VALUES(N'{0}',N'{1}',N'{2}',N'{3}',{4},{5},{6},1)",sanpham.MaSanPham,sanpham.TenSanPham,sanpham.MoTa,sanpham.HinhAnh,sanpham.SoLuong,sanpham.DonGia,sanpham.LoaiSanPham);
                    row = _provider.ExeCuteNonQuery_CountRow(sThemSanPham);
            }
            _provider.Disconnect();
            return row > 0;
        }

        public int DemSanPham()
        {
            _provider.Connect();
            string sDemSanPham = "SELECT COUNT(*) FROM SanPham";
            int count = _provider.ExeCuteScalar(sDemSanPham);
            int result = _provider.ExeCuteScalar(sDemSanPham);
            return result;

        }

        public bool XoaSanPham (SanPhamDTO sanpham)
        {
            int row = 0;
            _provider.Connect();
            string sXoaSanPham = string.Format("UPDATE SanPham SET TrangThaiSanPham = 0 WHERE MaSanPham = '{0}'", sanpham.MaSanPham);
            row = _provider.ExeCuteNonQuery_CountRow(sXoaSanPham);
            _provider.Disconnect();
            return row > 0;
        }


        public bool SuaSanPham(SanPhamDTO sanpham)
        {
            int row = 0;
            _provider.Connect();
            string sSuaSanPham = string.Format("UPDATE SanPham SET TenSanPham = N'{0}' , MoTa = N'{1}' , HinhAnh = '{2}' , SoLuong = {3}, DonGia = {4}, LoaiSanPham = {5} ", sanpham.TenSanPham, sanpham.MoTa, sanpham.HinhAnh, sanpham.SoLuong, sanpham.DonGia, sanpham.LoaiSanPham);
            row = _provider.ExeCuteNonQuery_CountRow(sSuaSanPham);
            return row > 0;
        }

        //public DataTable LayDanhSachSanPham()
        //{
        //    string connectionString = @"Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True";
        //    string sLayDanhSachSanPham = "SELECT * FROM SanPham,LoaiSanPham WHERE LoaiSanPham.MaLoai = SanPham.LoaiSanPham AND TrangThaiSanPham = 1 ORDER BY SoThuTu DESC";
        //    using (SqlConnection cnn = new SqlConnection(connectionString))
        //    {
        //        cnn.Open();
        //        string sql = "Select * from Students";
        //        SqlCommand cmd = new SqlCommand(sLayDanhSachSanPham, cnn);

        //        DataTable table = new DataTable();
        //        table.Load(cmd.ExecuteReader());
        //        cnn.Close();
        //        return table;
        //    }
        //}
       
    }
}