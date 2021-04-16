<%@ Page language="c#" Inherits="YK5_Forum.Search.SearchEngine" CodeFile="SearchEngine.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SearchEngine</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" cellSpacing="1"
				cellPadding="1" width="812" border="0">
				<TR>
					<TD></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 39px">
						<TABLE id="Table2" style="WIDTH: 792px; HEIGHT: 27px" cellSpacing="1" cellPadding="1" width="792"
							border="0">
							<TR>
								<TD style="WIDTH: 293px" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:linkbutton id="LinkButton1" runat="server" onclick="LinkButton1_Click">Articles</asp:linkbutton></TD>
								<TD align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:linkbutton id="LinkButton2" runat="server" onclick="LinkButton2_Click">Questions and Answers</asp:linkbutton></TD>
							</TR>
						</TABLE>
						<asp:Label id="lblMsg" runat="server" Width="27px"></asp:Label>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 57px" align="center">
						<P><asp:textbox id="txtarticle" runat="server" Width="544px" Visible="False"></asp:textbox><asp:button id="btarticle" runat="server" Visible="False" Text="Search" onclick="btarticle_Click"></asp:button><asp:textbox id="txtqa" runat="server" Width="544px" Visible="False"></asp:textbox><asp:button id="btqa" runat="server" Visible="False" Text="Search" onclick="btqa_Click"></asp:button></P>
					</TD>
				</TR>
				<TR>
					<TD align="left"><asp:datalist id="Datalist2" runat="server" onselectedindexchanged="Datalist2_SelectedIndexChanged">
							<ItemTemplate>
								<asp:Label id="Label1" runat="server">
									<table>
										<tr>
											<td>
												<a href='frmAnswer.aspx?id=<%# DataBinder.Eval(Container.DataItem, "QuestionId") %>'>
													<%# DataBinder.Eval(Container.DataItem, "Questions") %>
												</a>
											</td>
										</tr>
										<tr>
										</tr>
									</table>
								</asp:Label>
							</ItemTemplate>
						</asp:datalist><asp:datalist id="DataList1" runat="server">
							<ItemTemplate>
								<asp:Label id="Label1" runat="server">
									<a href='C:\Temp\<%# DataBinder.Eval(Container.DataItem, "ArticleLink") %>'   >
										<%# DataBinder.Eval(Container.DataItem, "ArticleLink") %>
									</a>
								</asp:Label>
							</ItemTemplate>
						</asp:datalist></TD>
				</TR>
			</TABLE>
			
		</form>
	</body>
</HTML>
