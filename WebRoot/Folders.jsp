<%@ page import="java.sql.*" %>
<%@page import="com.dts.core.dao.AbstractDataAccessObject"%>

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
									<td background="images/split-bar.gif" bgcolor="#999999" height="20">
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

									</td>
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
                 <td width="5%" height="120" align="right"></td>
                 <td width="95%">
  <table><tr><td width="682">
    
    <% if(request.getParameter("status")!=null)
					  {%>
      <br><br>   <strong><%=request.getParameter("status")%></strong>
                      <%}%>
                  <h2>    
                    
                 
             	     </h2><br>
             	     </td></tr>
             	     <tr><td valign=top height10%><pre>
<%
		
		String loginId=(String)session.getAttribute("user");
		
		int sessioni=0;
		
			sessioni++;
			System.out.println(sessioni);
			
			
		
		
		Connection con=new AbstractDataAccessObject().getConnection();
		Statement st=con.createStatement();
		String sql="select folderid,foldername,FOLDERCREATIONDATE from personalfolder where userid=(select userid from userdetails where loginid='"+loginId+"')";
		ResultSet rs=st.executeQuery(sql);
		
		%><strong>Current Folder: <font color='green'><%=loginId %><hr color=#990000 height=5><br>
		<%int folderId=0; %>
		<br><table width='100%' bgcolor='white'><tr  bgcolor=wheat><th width='25%'align=left>Name</th><th align=left>ModifiedDate</th></tr><tr></tr><tr></tr>
		<%while(rs.next())
		{
			 folderId=rs.getInt(1);
			String currentFolderName=rs.getString(2);
			%>
			<tr><td width='25%'><A HREF=DisplaysubFolders.jsp?id=<%=folderId%> ><IMG SRC="images/folder.gif" BORDER="0"></A>
			<%=currentFolderName%></td>
			<td  width='25%'><%=rs.getDate(3) %></td></tr>
		<%} %>
		</table>
		<%
		rs.close();
		st.close();
		con.close();
		
  %>
  
 </td></tr></table>

																		<p class="just">
																			<br>

																			<img src="images/paragraph-line.jpg" border="0"
																				height="3" vspace="7" width="1200"">
																			<br>

																			<!-- COPY AND PASTE CODE ABOVE HERE TO MAKE A NEW PARAGRAPH -->







								

				  </td>
												</tr>
											
										</table>
										<!-- SPLIT TABLE -->

						<!-- OUTER TABLE-->







				<tr>
					<td valign="bottom">

						<img src="images/stretchbar.jpg" alt="image" height="28"
							width="1200"">
						<br>


						<!-- COPYRIGHT -->
						<!-- COPYRIGHT -->
					</td>
				</tr>
		<!-- END PAGE TABLE-->

	</body>
</html>
  