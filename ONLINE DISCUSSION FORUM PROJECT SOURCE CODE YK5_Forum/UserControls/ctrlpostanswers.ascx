<%@ Control Language="c#"   Inherits="YK5_Forum.UserControls.PostAnswers" CodeFile="ctrlPostAnswers.ascx.cs" %>
<P>
	<asp:DataList id="DataList1" runat="server">
		<HeaderTemplate>
			<FONT color="#6600cc"><STRONG><FONT color="#ff3300"><FONT color="#6600cc"><STRONG>Categories <FONT color="#ff3300">
			*
		</HeaderTemplate>
		<ItemTemplate>
			<asp:Label id="Label1" runat="server">
				<a href='PostAnswers.aspx?id=<%# DataBinder.Eval(Container.DataItem, "CategoryId") %>'>
					<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>
				</a>
			</asp:Label>
		</ItemTemplate>
	</asp:DataList></P>
