namespace YK5_Forum.UserControls
{
	using System;
	using System.Data;
	using System.Data.SqlClient;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for Search.
	/// </summary>
	public partial class Search : System.Web.UI.UserControl
	{

		general g = new general();

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				txtarticle.Visible=true;
				btarticle.Visible=true;
			}
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
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			txtarticle.Visible=true;
			btarticle.Visible=true;
			txtqa.Visible=false;
			btqa.Visible=false;
			Response.Redirect("../Search/SearchEngine.aspx");
		}

		protected void LinkButton2_Click(object sender, System.EventArgs e)
		{
			txtarticle.Visible=false;
			btarticle.Visible=false;
			txtqa.Visible=true;
			btqa.Visible=true;
		}

		protected void btarticle_Click(object sender, System.EventArgs e)
		{
			string sql="select keyid from keyword WHERE KeyWord like '%"+txtarticle.Text+"%'";
			int k;
			k=Convert.ToInt32(g.Returnvalue(sql));
		
			g.viewList("SELECT * FROM article WHERE KeyId="+ k +" ",DataList1);
					
		}

		protected void btqa_Click(object sender, System.EventArgs e)
		{
			string sql="select keyid from keyword WHERE KeyWord like '%"+txtqa.Text+"%'";
			int k;
			k=Convert.ToInt32(g.Returnvalue(sql));
			
			SqlConnection con = new SqlConnection("server=.;database=YK5_Forum;uid=sa;");		
			con.Open();
			SqlDataAdapter adp=new SqlDataAdapter("SELECT * FROM Question WHERE keyid="+ k +"",con);
			DataSet ds=new DataSet();
			adp.Fill(ds);
			Datalist2.DataSource=ds;
			Datalist2.DataBind();	
			con.Close();
			
		}
	}
}
