<%@ page import ="com.dts.fss.dao.*,com.dts.fss.model.*" %>
<%@page import="java.util.Enumeration,com.dts.core.util.CoreHash"%>
<%@page import="com.dts.core.util.DateWrapper"%>

<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
	<head>


		
		<title>File Sharing System</title>
		<meta name="Description"
			content="AllWebCo Website Templates and Pre-Made Websites. Very reasonable prices and a complete setup.">
		<meta name="KeyWords"
			content="website template, template, pre made web site, instant website,pre-made website,instant webpage,pre-made webpage">

		<!-- CHANGE THE ABOVE THREE LINES -->

		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<meta name="Copyright"
			content="Copyright 2002 AllWebCo Design http://allwebcodesign.com/">
		<meta name="Publisher"
			content="AllWebCo Templates http://allwebco-templates.com">
		<meta http-equiv="Content-Language" content="en">
		<meta name="revisit-after" content="15 days">
		<meta name="robots" content="index, follow">
		<meta name="Rating" content="General">
		<meta name="Robots" content="All">



		<link rel="StyleSheet" href="images/corporatestyle.css"
			type="text/css" media="screen">

<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
<script language="JavaScript1.1" src="scripts/pass.js">


</script> <script type="text/javascript" src="scripts/image.js"> </script>
 <script type="text/javascript" src="scripts/general.js"> </script>
 <script type="text/javascript" src="scripts/adi.js"> </script>
 <script type="text/javascript" src="scripts/form_validation.js"> </script>

		<script language="JavaScript" src="images/javascripts.js"></script>
		<script language="JavaScript" src="images/pop-closeup.js"></script>
		<style type="text/css">
.Title {
font-family:Verdana;
font-weight:bold;
font-size:8pt
}
</style><script type="text/javascript" src="scripts/project.js"></script>
	</head>
	<body leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0"
		alink="#666666" background="images/background-main.jpg"
		bgcolor="#ffffff" link="#4e172a" marginheight="0" marginwidth="0"
		text="#000000" vlink="#4e172a">
	<div class="divstyle" id="info"
			style="display: none; top: 293px; left: 526px;">
			<div id="imagetitle" class="pstyletitle" align="center"></div>
		</div>





		<!-- PAGE TABLE-->
		<table border="0" cellpadding="0" cellspacing="0" height="100%"
			width="1200"">
			<tbody>
				<tr>
					<td align="left" valign="top"><script language="JavaScript" src="images/header.js"></script>
						<table bgcolor="#909099" border="0" cellpadding="0"
							cellspacing="0" width="1200"">
							<tbody>
								<tr bgcolor="#FC985C">
									<td width="15">
										<br>
								  </td>
									<td align="left" valign="CENTER"><jsp:include
											page="header.html" /></td>
									<td align="right" valign="CENTER">
										<nobr>
											<span class="slogan"> </span>
											<br>
								  </td>
									<td width="15">
										<img src="images/spacer.gif" border="0" height="10" width="15">
										<br>
								  </td>
							  </tr>
							</tbody>
					  </table>
						
<table border="0" cellpadding="0" cellspacing="0" width="1200"">
							<tbody>
								<tr>
									<td>
										<img src="images/careers.jpg" alt="image" border="0"
											height="200" width="1200"></td>
								</tr>
								<tr>
									<td background="images/split-bar.gif" bgcolor="#999999" height="20"/>
										<%if(session.getAttribute("role")!=null){
   				if (session.getAttribute("role").equals("admin"))
		
					{%>
					<jsp:include page="adminoptions.html"/>
					<% }
				else if (session.getAttribute("role").equals("user"))
					{%>
					
					<jsp:include page="useroptions.html"/>			
					<%}
				else {%>
						<jsp:include page="generaloptions.html"/>
					<%}}
					else{
					response.sendRedirect("LoginForm.jsp?status=session expired login again...." );
			}		%>
								
								</tr>
							</tbody>
					  </table>



						<!-- OUTER TABLE-->
						<table border="0" cellpadding="0" cellspacing="0" width="1200"">
							<tbody>
								<tr>
									<td align="center" valign="top" bgcolor="#FEE8B6">

	 
      
		<p>&nbsp;</p>
		<p>&nbsp;</p>
      <p>&nbsp;</p>

<table  border="0" align="center"  bgcolor="white" width="80%">
              <tr>
  <tr><td></td></tr>
  <h2>UserHome</h2>
  
    <% int readyfile=0;
    if(request.getParameter("status")!=null)
					  {%>
      <br><br>   <strong><%=request.getParameter("status")%></strong>
                      <%}%><br>
                    
                 <td><marquee scrolldelay="200"><h4><font color="Blue">These are Downloadable Files</font></h4></marquee>
 <table width='100%' border=1><tr bgcolor='wheat' ><th align=left><span class=Title>&nbsp;&nbsp;S No</span></th><th align=left><input type=checkbox style='visibility:hidden'> &nbsp;&nbsp;<span class=Title>&nbsp;&nbsp;&nbsp;&nbsp;File Name</span></th><th align=left>&nbsp;&nbsp;&nbsp;&nbsp;size</th><th align=left>&nbsp;&nbsp;UplaodedDate</th><th align=left>&nbsp;&nbsp;DownLoadStatus</th><th align=left>&nbsp;&nbsp;Accessibility</th><th align=left>&nbsp;&nbsp;Owner</th></tr>
  
  <%
           
           int sno=1;
		   String user=(String)session.getAttribute("user");
		   CoreHash aCoreHash=new DownloadDAO().getPublicDownloadableFile();
		   Enumeration e=aCoreHash.keys();
		   while(e.hasMoreElements())
		   {
		   Integer i=(Integer)e.nextElement();
		   Download aDownload=(Download)aCoreHash.get(i);
		   
		   boolean flag=new DownloadDAO().getAllreadydownloadedfile(aDownload,user);
		   if(flag)
		   {
		   %>	
<tr><td>&nbsp;&nbsp;&nbsp;<%=sno%></td><td>&nbsp;&nbsp;<font color=#993300><IMG SRC="images/File.gif" BORDER="0"><font color="red" size=2> <%=aDownload.getFileName() %></font></td><td >&nbsp;&nbsp;<%=aDownload.getFileSize() %> KB</td><td>&nbsp;&nbsp;<%=aDownload.getSownloadDate() %> </td><td>&nbsp;&nbsp;<IMG SRC="images/checkbox.gif" BORDER="2" height=14 width=20> <font color="red">DownLoaded</font></td><td>&nbsp;&nbsp;Public</td><td>&nbsp;&nbsp;<a href="OwnerProfile.jsp?owner=<%=aDownload.getOwnerID() %>"><font color="red"><%=aDownload.getOwnerID() %></font></a></td></tr>
		   <%} else{
		   readyfile++;%>       
      <tr><td><span class=Title>&nbsp;&nbsp;&nbsp;<%=sno%></span></td><td >&nbsp;&nbsp;<font color=#993300><A HREF='./DownloadAction?fileID=<%=aDownload.getFileID() %>&subFolderID=<%=aDownload.getSubFolderID()%>&folderID=<%=aDownload.getFolderID()%>'><IMG SRC="images/File.gif" BORDER="0"></A><span class=Title><font color="green" size=2>  <%=aDownload.getFileName() %></font></span></td><td ><span class=Title>&nbsp;&nbsp;<%=aDownload.getFileSize() %> KB</span></td><td><span class=Title>&nbsp;&nbsp;<%=aDownload.getSownloadDate() %> </span></td><td><A HREF='./DownloadAction?fileID=<%=aDownload.getFileID() %>&subFolderID=<%=aDownload.getSubFolderID()%>&folderID=<%=aDownload.getFolderID()%>'><span class=Title><font color="green">&nbsp;&nbsp;ReadToDownLoad</font></span></A></td><td><span class=Title>&nbsp;&nbsp;Public</span></td><td><span class=Title>&nbsp;&nbsp;<a href="OwnerProfile.jsp?owner=<%=aDownload.getOwnerID() %>"><font color="green"><%=aDownload.getOwnerID() %></font></a></span></td></tr>
  <%}sno++;}aCoreHash.clear(); %>
<%
		   
		   aCoreHash=new DownloadDAO().getPartialPublicDownloadableFile(user);
		    e=aCoreHash.keys();
		   while(e.hasMoreElements())
		   {
		   Integer i=(Integer)e.nextElement();
		   Download aDownload=(Download)aCoreHash.get(i);
		   boolean flag1=new DownloadDAO().getpermitedFiles(aDownload,user);
		   if(flag1)
		   {
		   boolean flag=new DownloadDAO().getAllreadydownloadedfile(aDownload,user);
		   if(flag)
		   {
		   %>	
		   <tr><td>&nbsp;&nbsp;&nbsp;<%=sno%></td><td>&nbsp;&nbsp;<font color=#993300><IMG SRC="images/File.gif" BORDER="0"><font color="red" size=2> <%=aDownload.getFileName() %></font></td><td >&nbsp;&nbsp;<%=aDownload.getFileSize() %> KB</td><td>&nbsp;&nbsp;<%=aDownload.getSownloadDate() %> </td><td>&nbsp;&nbsp;<IMG SRC="images/checkbox.gif" BORDER="2" height=14 width=20> <font color="red">DownLoaded</font></td><td>&nbsp;&nbsp;PartialPublic</td><td>&nbsp;&nbsp;<a href="OwnerProfile.jsp?owner=<%=aDownload.getOwnerID() %>"><font color="red"><%=aDownload.getOwnerID() %></font></a></td></tr>
		   <%} else{
		   readyfile++;%>       
      <tr><td><span class=Title>&nbsp;&nbsp;&nbsp;<%=sno%></span></td><td >&nbsp;&nbsp;<font color=#993300><A HREF='./DownloadAction?fileID=<%=aDownload.getFileID() %>&subFolderID=<%=aDownload.getSubFolderID()%>&folderID=<%=aDownload.getFolderID()%>'><IMG SRC="images/File.gif" BORDER="0"></A><span class=Title><font color="green" size=2>  <%=aDownload.getFileName() %></font></span></td><td ><span class=Title>&nbsp;&nbsp;<%=aDownload.getFileSize() %> KB</span></td><td><span class=Title>&nbsp;&nbsp;<%=aDownload.getSownloadDate() %> </span></td><td><A HREF='./DownloadAction?fileID=<%=aDownload.getFileID() %>&subFolderID=<%=aDownload.getSubFolderID()%>&folderID=<%=aDownload.getFolderID()%>'><span class=Title><font color="green">&nbsp;&nbsp;ReadToDownLoad</font></span></A></td><td><span class=Title>&nbsp;&nbsp;PartialPublic</span></td><td><span class=Title>&nbsp;&nbsp;<a href="OwnerProfile.jsp?owner=<%=aDownload.getOwnerID() %>"><font color="green"><%=aDownload.getOwnerID() %></font></a></span></td></tr>
  <%}}sno++;} %>

<span class=Title>Hello  <font color="gree" size="2"><%=session.getAttribute("user")%></font>,  you have (<font color="red" size="3"><%=readyfile%></font>) Files for Download</span>  


 </table></td></table><table align=right><tr></tr><tr></tr><tr width=22><td width=12><a href="#"><span class=Title>&nbsp;&nbsp;Latest</span></a></td><td><a href="#"><span class=Title>&nbsp;&nbsp;<< Prev</span></a></td><td><a href="#"><span class=Title>&nbsp;&nbsp;Next >></span></a></td><td><a href="#"><span class=Title>&nbsp;&nbsp;Oldest</span></a></td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;</td></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr></table></td></tr>
  
																	<p class="just">
																			
																			
											
				<tr>	
					<td valign="bottom">

						<img src="images/stretchbar.jpg" alt="image" height="28"
							width="1200"">
											</td>
											
				</tr></tbody></table></td></tr></tbody></table>
			
		<!-- END PAGE TABLE-->

	</body>
</html>