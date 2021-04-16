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

namespace YK5_Forum.Articles
{
	/// <summary>
	/// Summary description for WebForm2.
	/// </summary>
	public partial class WebForm2 : System.Web.UI.Page
	{

		general g = new general();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			Label3.Visible=false;
			uplTheFile.Visible=false;
			btnUploadTheFile.Visible=false;
			Label2.Visible=false;
			hh.Visible=false;
			TextBox1.Visible=false;
			Label4.Visible=false;
//			if(!Page.IsPostBack)
//			{
//				hh.Visible=false;
//			}
       
		

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

			
			TextBox2.Text=System.IO.Path.GetFileName(uplTheFile.PostedFile.FileName);
			TextBox3.Text=Request.QueryString["id"];
			Textbox5.Text=uplTheFile.PostedFile.FileName;
			if(TextBox3.Text=="")
			{
				Label3.Text="Select Category";
				Label3.Visible=true;
				
			}	
			else
			{
				g.insert("insert into keyword values('"+ TextBox4.Text +"')");
				string sql="select keyid from keyword where keyword='"+ TextBox4.Text +"'";
				int k;
				k=Convert.ToInt32(g.ReturnString(sql));
				g.insert("insert into article values('"+TextBox3.Text+"','"+TextBox2.Text+"','"+Textbox5.Text+"',"+k+")");
			
			}
			
			TextBox4.Text="";
			uplTheFile.Visible=true;
			btnUploadTheFile.Visible=true;
			
     	}

		protected void RadioButton1_CheckedChanged(object sender, System.EventArgs e)
		{
			
//			TextBox1.Visible=true;
//		    hh.Visible=true;
//			uplTheFile.Visible=false;
//			btnUploadTheFile.Visible=false;
//			Label4.Visible=false;

			hh.Visible=true;
			TextBox1.Visible=true;
			Label2.Visible=true;
 
		}

		protected void RadioButton2_CheckedChanged(object sender, System.EventArgs e)
		{
		
//			uplTheFile.Visible=true;
//			btnUploadTheFile.Visible=true;
//	     	TextBox1.Visible=false;
//		    Label2.Visible=false;
			uplTheFile.Visible=true;
			btnUploadTheFile.Visible=true;
			Label4.Visible=true;


		}
		
		protected void hh_ServerClick(object sender, System.EventArgs e)
		{
			TextBox3.Text=Request.QueryString["id"];
			if(TextBox3.Text=="")
			{
				Label3.Text="Select The Category";
				Label3.Visible=true;
			}
			else
			{
		
				g.insert("insert into article values('"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox2.Text+"','"+TextBox1.Text+"')");
				
			} 
			TextBox4.Text="";
			TextBox1.Text="";
		}

				
	}
}
