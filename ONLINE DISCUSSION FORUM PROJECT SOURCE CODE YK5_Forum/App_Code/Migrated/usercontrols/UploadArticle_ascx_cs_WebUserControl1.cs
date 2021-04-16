//====================================================================
// This file is generated as part of Web project conversion.
// The extra class 'WebUserControl1' in the code behind file in 'usercontrols\UploadArticle.ascx.cs' is moved to this file.
//====================================================================




namespace YK5_Forum
 {

	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	public class WebUserControl1 : System.Web.UI.UserControl
	{
		protected System.Web.UI.WebControls.DataList DataList1;
			general g=new general();

		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
		g.viewList("select * from category",DataList1);
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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}

}