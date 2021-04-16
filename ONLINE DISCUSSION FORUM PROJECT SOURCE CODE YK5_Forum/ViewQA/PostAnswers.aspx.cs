using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace YK5_Forum.PostQuestions
{
	/// <summary>
	/// Summary description for PostAnswers.
	/// </summary>
	/// 
	public partial class PostAnswers : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox TextBox1;
		general g= new general();
	
		
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			string id;
			id=	Request.QueryString["id"];	
			int i=Convert.ToInt32(id);
            SqlConnection con = new SqlConnection("Data Source=APTTECH4;Initial Catalog=OnlineFourm;Integrated Security=True");
			con.Open();
			SqlCommand cmd= new SqlCommand();
			cmd.CommandText="select Questions from Question where QuestionId="+ i +"";
			cmd.Connection=con;
			SqlDataReader dr=cmd.ExecuteReader();
			if(dr.Read())
			{
				txtquestion.Text=Convert.ToString(dr[0]);
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
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void btnUploadTheFile_ServerClick(object sender, System.EventArgs e)
		{
			string id;
			string Qdate;
			string filename;
			string msg;
			string sql;
			
			filename=System.IO.Path.GetFileName(uplTheFile.PostedFile.FileName);
			Qdate=Convert.ToString(DateTime.Now.ToShortDateString());
			id=Request.QueryString["id"];
			int i=Convert.ToInt32(id);
			sql="insert into qa values('"+TextBox2.Text+"',"+i+",'"+Qdate+"','"+TextBox3.Text+"','"+filename+"')";
			msg=Convert.ToString(g.insert(sql));
			if(msg=="True")
				lblMsg.Text="Upload Successfully";
			
			else
			
				lblMsg.Text="Error in Loading Pls TryAgain!";

		}


	}
}
