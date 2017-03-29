using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebBanHang.DTO
{
    
    public class DataProvider
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        //Hàm kết nối dữ liệu
        public void Connect()
        {
            string connect_string = @"Data Source=ADMINISTRATOR\SQLEXPRESS1;Initial Catalog=WebBanHang_Database;Integrated Security=True";
            conn = new SqlConnection(connect_string);
            conn.Open();
        }
        // Hàm đóng kết nối
        public void Disconnect()
        {
            conn.Close();
        }
        // Hàm thêm,xóa,sửa dữ liệu
        public void ExeCuteNonQuery(string sql)
        {
            Connect();
            cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
        }

        public int ExeCuteNonQuery_CountRow(string sql)
        {
            Connect();
            cmd = new SqlCommand(sql, conn);
            int row = Convert.ToInt32(cmd.ExecuteNonQuery());
            return row;
        }

        public int ExeCuteScalar(string sql)
        {
            Connect();
            cmd = new SqlCommand(sql, conn);
            int count = (int)cmd.ExecuteScalar();
            return count;
        }

        public  void Excute(string sql)
        {
            Connect();
            cmd = new SqlCommand(sql, conn);
            cmd.ExecuteReader() ;
        }
    }
}