<%@ Control Language="c#" Inherits="YK5_Forum.UserControls.Search" CodeFile="Search.ascx.cs" %>
<HTML>
	<HEAD>
		<title>SearchEngine</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 150px; POSITION: absolute; TOP: 200px" cellSpacing="1"
			cellPadding="1" width="812" border="0" align="center">
			<TR>
				<TD style="HEIGHT: 17px">
					<P align="left"><FONT color="#cc6868" size="5"><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								SEARCH</STRONG></FONT></P>
				</TD>
			</TR>
			<TR>
				<TD style="HEIGHT: 2px" align="left">
					<asp:linkbutton id="LinkButton1" runat="server" onclick="LinkButton1_Click">Articles</asp:linkbutton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:linkbutton id="LinkButton2" runat="server" onclick="LinkButton2_Click">Questions and Answers</asp:linkbutton>
				</TD>
			</TR>
			<TR>
				<TD style="HEIGHT: 25px" align="center">
					<P align="left"><asp:textbox id="txtarticle" runat="server" Width="544px" Visible="False"></asp:textbox><asp:button id="btarticle" runat="server" Visible="False" Text="Search" onclick="btarticle_Click"></asp:button><asp:textbox id="txtqa" runat="server" Width="544px" Visible="False"></asp:textbox><asp:button id="btqa" runat="server" Visible="False" Text="Search" onclick="btqa_Click"></asp:button></P>
				</TD>
			</TR>
			<TR>
				<TD align="left"><asp:datalist id="Datalist2" runat="server">
						<ItemTemplate>
							<asp:Label id="Label1" runat="server">
								<table>
									<tr>
										<td>
											<a href='../ViewQA/ViewAnswer.aspx?id=<%# DataBinder.Eval(Container.DataItem, "QuestionId") %>'>
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
							<asp:Label id="Label2" runat="server">
								<a href='C:\Temp\<%# DataBinder.Eval(Container.DataItem, "ArticleLink") %>'   >
									<%# DataBinder.Eval(Container.DataItem, "ArticleLink") %>
								</a>
							</asp:Label>
						</ItemTemplate>
					</asp:datalist></TD>
			</TR>
		</TABLE>
	</body>
</HTML>
