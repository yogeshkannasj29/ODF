namespace YK5_Forum
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for WebUserControl2.
	/// </summary>
	public partial class WebUserControl2 : System.Web.UI.UserControl
	{

		general g=new general();
		protected void Page_Load(object sender, System.EventArgs e)
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

		}
		#endregion
	}
}
