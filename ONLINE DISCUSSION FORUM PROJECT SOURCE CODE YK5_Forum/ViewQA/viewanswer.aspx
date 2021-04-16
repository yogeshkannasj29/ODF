<%@ Page language="c#" Inherits="YK5_Forum.ViewQA.WebForm2" CodeFile="ViewAnswer.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ctrlViewAnswers" Src="../UserControls/ctrlViewAnswers.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 96px; WIDTH: 776px; POSITION: absolute; TOP: 0px; HEIGHT: 376px"
				cellSpacing="1" cellPadding="1" width="776" bgColor="#ffffff" border="0">
				<TR>
					<TD style="HEIGHT: 40px">
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 38px">
						<uc1:ctrlViewAnswers id="CtrlViewAnswers1" runat="server"></uc1:ctrlViewAnswers></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 26px">
						<asp:TextBox id="TextBox1" runat="server" Width="560px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:datalist id="DataList1" runat="server" Width="789px" DESIGNTIMEDRAGDROP="27" ForeColor="Navy"
							CellPadding="5" BorderColor="Gray" CellSpacing="5" BackColor="#E0E0E0">
							<AlternatingItemStyle BorderColor="Black" BackColor="Silver"></AlternatingItemStyle>
							<ItemTemplate>
								<TABLE>
									<TR>
										<IMG id=image height=50 src='D:\yogaraj\ODF\uploadimages\<%# DataBinder.Eval(Container.DataItem,"Userimage") %>' width=50>
										<TD><FONT color="#cc00ff"><%# DataBinder.Eval(Container.DataItem,"UserName") %></FONT></TD>
									</TR>
									<TR>
										<TD><%# DataBinder.Eval(Container.DataItem,"Adate") %></TD>
									</TR>
									<TR>
										<TD><FONT color="#0033ff"><%# DataBinder.Eval(Container.DataItem,"Answers") %></FONT></TD>
									</TR>
								</TABLE>
							</ItemTemplate>
						</asp:datalist></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
