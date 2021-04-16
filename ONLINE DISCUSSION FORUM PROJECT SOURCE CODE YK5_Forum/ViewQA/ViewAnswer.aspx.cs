using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace YK5_Forum.ViewQA
{
	/// <summary>
	/// Summary description for WebForm2.
	/// </summary>
	public partial class WebForm2 : System.Web.UI.Page
	{
		general g=new general();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			string id;
			id=	Request.QueryString["id"];	
			int i=Convert.ToInt32(id);
            SqlConnection con = new SqlConnection("Data Source=APTTECH3;Initial Catalog=online;Integrated Security=True");
			con.Open();
			SqlCommand cmd= new SqlCommand();
			cmd.CommandText="select Questions from Question where QuestionId="+ i +"";
			cmd.Connection=con;
			SqlDataReader dr=cmd.ExecuteReader();
			if(dr.Read())
			{
				TextBox1.Text=Convert.ToString(dr[0]);
			}
			g.viewList("Select * from QA where QuestionId="+i+"",DataList1);
			con.Close();
				
				
			

		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion
	}
}
