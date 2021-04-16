<%--<%@ Register TagPrefix="uc1" TagName="WebUserControl2" Src="../../UserControls/WebUserControl2.ascx" %>--%>
<%--<%@ Register TagPrefix="uc1" TagName="Header" Src="../../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../../UserControls/Footer.ascx" %>--%>
<%@ Page language="c#" Inherits="YK5_Forum.Articles.WebForm2" CodeFile="UploadArticle.aspx.cs" %>
<%--<%@ Register TagPrefix="uc1" TagName="UploadArticle" Src="../../UserControls/UploadArticle.ascx" %>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>File upload in ASP.NET</title>
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" encType="multipart/form-data" runat="server">
			<TABLE id="Table2" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px" height="600"
				cellSpacing="1" cellPadding="1" width="812" bgColor="#ffffff" border="0">
				<TBODY>
					<TR>
						<TD vAlign="top" height="422">
							<span id="txtOutput" style="FONT: 8pt Times New Roman" runat="server">
								<P>&nbsp;</P>
								<P>
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="300" border="0">
										<TR>
											<TD>
												<%--<uc1:Header id="Header1" runat="server"></uc1:Header>--%></TD>
										</TR>
										<TR>
											<TD>
												<TABLE id="Table1" height="312" cellSpacing="1" cellPadding="1" width="776" border="0">
													<TR>
														<TD vAlign="top" width="176" height="50">
															<P>
																<asp:label id="Label3" runat="server">Label</asp:label>
																<%--<uc1:UploadArticle id="UploadArticle1" runat="server"></uc1:UploadArticle>--%></P>
														</TD>
														<TD vAlign="top" width="207" height="50"><FONT color="#6600cc"><STRONG><FONT color="#ff3300"><FONT color="#6600cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																			&nbsp;<FONT face="Times New Roman">Subject</FONT></FONT><FONT face="Times New Roman">&nbsp;*</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<P>&nbsp;</P>
																		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	</FONT></STRONG></FONT>
														</TD>
														<TD vAlign="top" height="50">
															<P>
																<asp:textbox id="TextBox4" runat="server" Width="384px"></asp:textbox>&nbsp;</P>
															<P>&nbsp;<FONT face="Times New Roman" color="#000099">Enter The Subject of Articale 
																	Here</FONT></P>
														</TD>
													</TR>
													<TR>
														<TD width="176" height="85"></TD>
														<TD width="207" height="85">
															<P><FONT color="#6600cc"><STRONG><FONT color="#ff3300"></FONT></STRONG></FONT>&nbsp;</P>
															<P>&nbsp;</P>
														</TD>
														<TD vAlign="top" height="85">
															<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
															<P>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
																<asp:radiobutton id="RadioButton1" runat="server" GroupName="radio" AutoPostBack="True" Text="Enter Your Artilce" oncheckedchanged="RadioButton1_CheckedChanged"></asp:radiobutton>
																<asp:radiobutton id="RadioButton2" runat="server" GroupName="radio" AutoPostBack="True" Text="Upload Your Artilce" oncheckedchanged="RadioButton2_CheckedChanged"></asp:radiobutton></P>
														</TD>
													</TR>
													<TR>
														<TD width="176" height="141"></TD>
														<TD width="207" height="141"><FONT color="#6600cc"><STRONG>&nbsp;
																	<asp:label id="Label2" runat="server" Width="160px">Enter Your Artilce</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</STRONG></FONT></TD>
														<TD height="141">
															<asp:textbox id="TextBox1" runat="server" Width="570px" AutoPostBack="True" Height="130px" TextMode="MultiLine"></asp:textbox></TD>
													</TR>
													<TR>
														<TD width="176"></TD>
														<TD width="207">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
															<asp:label id="Label4" runat="server" ForeColor="BlueViolet" Font-Bold="True">Enter Your Artilce</asp:label></TD>
														<TD><INPUT id="uplTheFile" type="file" size="24" name="uplTheFile" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id="btnUploadTheFile" type="button" value="Upload" name="btnUploadTheFile" runat="server"
																OnServerClick="btnUploadTheFile_Click">&nbsp;<INPUT id="hh" type="button" value="Post Your Article" name="hh" runat="server" onserverclick="hh_ServerClick"></TD>
													</TR>
													<TR>
														<TD width="176"></TD>
														<TD width="207"></TD>
														<TD>
															<asp:textbox id="TextBox2" runat="server" Visible="False" DESIGNTIMEDRAGDROP="280"></asp:textbox>&nbsp;&nbsp;
															<asp:textbox id="TextBox3" runat="server" Visible="False"></asp:textbox>&nbsp;&nbsp;
															<asp:textbox id="Textbox5" runat="server" Visible="False"></asp:textbox></TD>
													</TR>
												</TABLE>
												<span id="Span1" style="FONT: 8pt verdana" runat="server"></span>
											</TD>
										</TR>
										<TR>
											<TD>
												<%--<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>--%>
										</TR>
									</TABLE>
								</P>
							</span></TD>
					</TR>
			</TD></TR></form>
		<SCRIPT language="C#" runat="server">
					
					
						
void btnUploadTheFile_Click(object Source, EventArgs evArgs) 
{
  string strFileNameOnServer =   System.IO.Path.GetFileName(uplTheFile.PostedFile.FileName);
  string strBaseLocation = "c:\\temp\\";
  
  if ("" == strFileNameOnServer) 
  {
    txtOutput.InnerHtml = "Error - a file name must be specified.";
    return;
  }

  if (null != uplTheFile.PostedFile) 
  {
    try 
    {
      uplTheFile.PostedFile.SaveAs(strBaseLocation+strFileNameOnServer);
      
    }
    catch (Exception e) 
    {
      txtOutput.InnerHtml = "Error saving <b>" + 
        strBaseLocation+strFileNameOnServer+"</b><br>"+ e.ToString();
    }
  }
}
		</SCRIPT>
		</TBODY></TABLE>
	</body>
</HTML>
