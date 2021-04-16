<%@ Register TagPrefix="uc1" TagName="ctrlPostAnswers" Src="../UserControls/ctrlPostAnswers.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.PostQuestions.PostAnswers" CodeFile="PostAnswers.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>PostAnswers</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
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
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px" height="600"
				cellSpacing="1" cellPadding="1" width="812" align="center" bgColor="#ffffff" border="0">
				<TR>
					<TD style="HEIGHT: 24px"><uc1:header id="Header1" runat="server"></uc1:header></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 32px" vAlign="top"><FONT color="#3333cc" size="4"><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								Post Your Answer</STRONG></FONT></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 35px" vAlign="top"></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 35px" vAlign="top">&nbsp;
						<asp:TextBox id="txtquestion" runat="server" Width="440px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 115px" vAlign="top">
						<TABLE id="Table2" style="WIDTH: 456px; HEIGHT: 104px" cellSpacing="1" cellPadding="1"
							width="456" border="0">
							<TR>
								<TD style="WIDTH: 119px">Enter your name</TD>
								<TD style="WIDTH: 259px"><asp:textbox id="TextBox2" runat="server" Width="179px"></asp:textbox></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 119px">Enter your answer</TD>
								<TD style="WIDTH: 259px"><asp:textbox id="TextBox3" runat="server" Width="179px"></asp:textbox></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 119px">Attach Your Image
								</TD>
								<TD style="WIDTH: 259px"><INPUT id="uplTheFile" type="file" size="24" name="uplTheFile" runat="server"></TD>
								<TD><INPUT id="btnUploadTheFile" type="button" value="Upload" name="btnUploadTheFile" runat="server"
										OnServerClick="btnUploadTheFile_Click"></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 119px"></TD>
								<TD style="WIDTH: 259px"><asp:label id="lblMsg" runat="server" Width="256px"></asp:label></TD>
								<TD></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 212px" vAlign="top"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
			<span id="txtOutput" style="FONT: 8pt verdana" runat="server"></span>
		</form>
	</body>
</HTML>
