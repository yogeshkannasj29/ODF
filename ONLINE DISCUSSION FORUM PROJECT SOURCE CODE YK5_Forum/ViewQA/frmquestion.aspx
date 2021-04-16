<%--<%@ Register TagPrefix="uc1" TagName="ctrlQuestion" Src="../UserControls/ctrlQuestion.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.ViewQA.WebForm1" CodeFile="frmQuestion.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="rosybrown">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table2" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px" cellSpacing="1"
				cellPadding="1" width="812" border="0" height="600" bgColor="#ffffff">
				<TR>
					<TD>
						<%--<uc1:Header id="Header1" runat="server"></uc1:Header></TD>--%>
				</TR>
				<TR>
					<TD>
						<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="300" border="0">
							<TR>
								<TD style="WIDTH: 110px" vAlign="top" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:DataList id="DataList3" runat="server">
										<HeaderTemplate>
											<FONT color="#6600cc"><STRONG><FONT color="#ff3300"><FONT color="#6600cc"><STRONG>Categories <FONT color="#ff3300">
											*
										</HeaderTemplate>
										<ItemTemplate>
											<asp:Label id="Label1" runat="server">
												<a href='../ViewQA/frmQuestion.aspx?id=<%# DataBinder.Eval(Container.DataItem, "CategoryId") %>'>
													<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>
												</a>
											</asp:Label>
										</ItemTemplate>
									</asp:DataList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</TD>
								<TD>
									<asp:datalist id="DataList1" runat="server" Width="600px">
										<ItemTemplate>
											<asp:Label id="Label1" runat="server">
												<table>
													<tr>
														<td>
															<%# DataBinder.Eval(Container.DataItem, "Questions") %>
															<div><a href='PostAnswers.aspx?id=<%# DataBinder.Eval(Container.DataItem, "QuestionId") %>'><FONT size="2"><EM>Post 
																			Answer</EM></FONT></a></div>
															<a href='ViewAnswer.aspx?id=<%# DataBinder.Eval(Container.DataItem, "QuestionId") %>'>
																<FONT size="2"><EM>View Answer</EM></FONT></a>
														</td>
													</tr>
													<tr>
													</tr>
												</table>
											</asp:Label>
										</ItemTemplate>
									</asp:datalist>&nbsp;&nbsp;&nbsp;&nbsp;
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<%--<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>--%>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
