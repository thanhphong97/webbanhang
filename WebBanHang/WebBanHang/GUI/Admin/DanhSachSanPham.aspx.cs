using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHang.BUS;
using WebBanHang.DTO;
using System.Data;
using System.Data.SqlClient;
namespace WebBanHang.GUI.Admin
{
    public partial class DanhSachSanPham : System.Web.UI.Page
    {
        private SanPhamBUS _SanPhamBUS = new SanPhamBUS();
        public DataTable LaydanhSachSanPham()
        {
            string connectionString = @"Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True";
            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                cnn.Open();
                string sql = @"SELECT * FROM SanPham,LoaiSanPham WHERE LoaiSanPham.MaLoai = SanPham.LoaiSanPham AND TrangThaiSanPham = 1 ORDER BY SoThuTu DESC";
                SqlCommand cmd = new SqlCommand(sql, cnn);

                DataTable table = new DataTable();
                table.Load(cmd.ExecuteReader());
                cnn.Close();
                return table;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                pager.DataSource = LaydanhSachSanPham().DefaultView;

                pager.BindToControl = Repeater1;

                Repeater1.DataSource = pager.DataSourcePaged;
            }


        }

        protected void btnXoaSP_Command(object sender, CommandEventArgs e)
        {
            string sMaSanPham = e.CommandArgument.ToString();
            string sMaSanPhamDuocChon = sMaSanPham.Trim();
            SanPhamDTO sanpham = new SanPhamDTO()
            {
                MaSanPham = sMaSanPhamDuocChon
            };
            bool bXoaSanPham = _SanPhamBUS.XoaSanPham(sanpham);
            if (bXoaSanPham == true)
            {
                Response.Write("<script>alert('Xóa sản phẩm thành công'); location.href = 'DanhSachSanPham.aspx';</script>");
            }
        }

        protected void btnSuaSPLink_Command(object sender, CommandEventArgs e)
        {
            string sMaSanPham = e.CommandArgument.ToString();
            string sMaSanPhamDuocChon = sMaSanPham.Trim();
            Response.Redirect(string.Format("~/GUI/Admin/SuaSanPham.aspx?MaSP={0}",sMaSanPhamDuocChon));
        }

      

       
    
        
       

       
    }
}