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

namespace YK5_Forum.ViewQA
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public partial class WebForm1 : System.Web.UI.Page
	{
		general g = new general();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			g.viewList("select * from category",DataList3);
			string id;
			id=	Request.QueryString["id"];	
			int i=Convert.ToInt32(id);
			g.viewList("Select * from Question where CategoryId="+i+" ",DataList1);

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

		private void DataList1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
	}
}
