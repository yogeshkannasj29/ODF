<%@ Register TagPrefix="uc1" TagName="ctrlPostAnswers" Src="../UserControls/ctrlPostAnswers.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.Answers.Articles.DownLoadArticle" CodeFile="DownLoadArticle.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Search" Src="../UserControls/Search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="UploadArticle" Src="../UserControls/UploadArticle.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>DownLoadArticle</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="rosybrown">
		<form id="Form1" method="post" runat="server">
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<TABLE id="Table4" style="Z-INDEX: 101; LEFT: 95px; POSITION: absolute; TOP: 0px" cellSpacing="1"
				cellPadding="1" width="300" border="0" bgColor="#ffffff" height="600">
				<TR>
					<TD>
						<TABLE id="Table1" height="200" cellSpacing="1" cellPadding="1" width="812" border="0">
							<TR>
								<TD vAlign="top">
									<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD vAlign="top">
						<P>&nbsp;</P>
						<P>
							<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0">
								<TR>
									<TD></TD>
									<TD>
										<uc1:UploadArticle id="UploadArticle1" runat="server"></uc1:UploadArticle></TD>
								</TR>
							</TABLE>
						</P>
						<uc1:Search id="Search1" runat="server"></uc1:Search>
					</TD>
				</TR>
				<TR>
					<TD vAlign="bottom">
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<P>
							<uc1:Footer id="Footer1" runat="server"></uc1:Footer></P>
						<P>&nbsp;</P>
					</TD>
				</TR>
			</TABLE>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
		</form>
	</body>
</HTML>
