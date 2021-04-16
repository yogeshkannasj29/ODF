<%@ Control Language="c#"  CodeFile="ctrlQuestion.ascx.cs" Inherits ="YK5_Forum.WebUserControl2" %>
<P>
	<asp:DataList id="DataList3" runat="server">
		<HeaderTemplate>
			<font color="#6600cc"><strong><font color="#ff3300"><font color="#6600cc"><strong>Categories <font color="#ff3300">
			*
		</HeaderTemplate>
		<ItemTemplate>
			<asp:Label id="Label1" runat="server">
				<a href='frmQuestion.aspx?id=<%# DataBinder.Eval(Container.DataItem, "CategoryId") %>'>
					<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>
				</a>
			</asp:Label>
		</ItemTemplate>
	</asp:DataList></P>
