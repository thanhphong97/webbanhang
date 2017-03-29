using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanHang.KhachHang
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["buttonlogin"] == null)
            {
                Response.Write("<script>alert('Lỗi đăng nhập. Vui lòng đăng nhập lại')</script>");
                Response.Redirect("~/DangNhapDangKy.aspx");
            }
      
            
        }
    }
}