using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPCachingMarkup
{
    public partial class Caching : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter ad;
        DataSet ds;
        SqlCommand cmd=new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=SUYPC070;Initial Catalog=STEP2017;User Id=sa;Password=Suyati123;");
            con.Open();
            ad = new SqlDataAdapter("select * from ASPCachingtbl", con);
            ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            //ddlRoles.DataSource = ds.Tables[0];
            //ddlRoles.DataTextField = "Role";
            //ddlRoles.DataBind();

            lblServerTime.Text = DateTime.Now.ToString();
        }

        protected void ddlRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
           var item1= ddlRoles.SelectedValue;
            var item = ddlRoles.SelectedItem.Value;
            cmd = new SqlCommand("sp_aspCaching", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Roles", ddlRoles.SelectedItem.Text);
            
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);

            GridView1.DataSource = ds1;
            GridView1.DataBind();

            

        }
    }
}