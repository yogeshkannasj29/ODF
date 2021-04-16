using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace YK5_Forum
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>

	public class general : System.Web.UI.Page
	{
		string constr;
		public general()
		{
            constr = "Data Source=APTTECH3;Initial Catalog=online;Integrated Security=True";
            
		}
		
		public void fillCombo(string query,DropDownList c)
		{
			SqlConnection con = new SqlConnection(constr);			
			SqlCommand cmd = new SqlCommand(query, con);
			SqlDataReader dr;
			dr = cmd.ExecuteReader();
			while (dr.Read()) 
			{
				c.Items.Add(Convert.ToString(dr[0]));
			}
			dr.Close();		
		}

		public void viewGrid(string query,DataGrid d1)
		{
			SqlConnection con = new SqlConnection(constr);		
			SqlDataAdapter adp=new SqlDataAdapter(query,con);
			DataSet ds=new DataSet();
			adp.Fill(ds);
			d1.DataSource=ds;
			d1.DataBind();				
		}

		public void viewList(string query,DataList dl1)
		{
			SqlConnection con = new SqlConnection(constr);		
			SqlDataAdapter adp=new SqlDataAdapter(query,con);
			DataSet ds=new DataSet();
			adp.Fill(ds);
			dl1.DataSource=ds;
			dl1.DataBind();				
		}

		public bool insert(string query)
		{			
			SqlConnection con = new SqlConnection(constr);
			con.Open();
			SqlCommand cmd = new SqlCommand(query, con);
//			cmd.ExecuteNonQuery();
//			con.Close();
			if(Convert.ToInt32(cmd.ExecuteNonQuery())>0)
			{
				con.Close();
				return true;
			}
			else
				return false;
			}

		public bool scalar (string query)
		{

			SqlConnection con = new SqlConnection(constr);
			con.Open();
			SqlCommand cmd = new SqlCommand(query, con);
			if(Convert.ToInt32(cmd.ExecuteScalar())>0)
			{
				con.Close();
				return true;
			}
			else
			{
				return false;
			}
			
		}
		
		public string ReturnString(string Query)
		{
			try
			{
				SqlConnection con = new SqlConnection(constr);
				con.Open();
				SqlCommand cmd = new SqlCommand(Query,con);
				string a=Convert.ToString(cmd.ExecuteScalar());
				return (a);
			}
			catch
			{
				return("");
			}
		}
		public bool dayscheck(string query,string s)
		{
		SqlConnection con=new SqlConnection(constr);
			con.Open();
			SqlCommand cmd;
			cmd= new SqlCommand(query, con);
			if(Convert.ToInt32(cmd.ExecuteScalar())<60)
			{
				con.Close();
				return true;
			}
			else
			{
			cmd=new SqlCommand("delete from Users where  UserName='"+s+"'",con);
				cmd.ExecuteScalar();
				con.Close();
				return false;
			}
			
			

		}
		public int Returnvalue(string Query)
		{
			
			SqlConnection con = new SqlConnection(constr);
			con.Open();
			SqlCommand cmd = new SqlCommand(Query,con);
			int k=Convert.ToInt32(cmd.ExecuteScalar());
			return (k);
			
		}

	}
}

