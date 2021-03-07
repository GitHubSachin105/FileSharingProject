<%@ page import="java.sql.*" %>
<%@page import="com.dts.core.dao.AbstractDataAccessObject"%>

<html>
<head>
<script language=javascript>
function add()
{ 
	
    document.getElementById("renameDiv").style.display='none';
    document.getElementById("addDiv").style.display='block';
    document.myform.addFolder.focus();
 }
 function rename()
{ 
	document.getElementById("addDiv").style.display='none'
	 document.getElementById("renameDiv").style.display='block';
 }

 function refresh()
 {
 	document.getElementById("addDiv").style.display='none'
    document.getElementById("renameDiv").style.display='none';
 }
 
</script>
<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
<script language="JavaScript1.1" src="scripts/pass.js">


</script> <script type="text/javascript" src="scripts/image.js"> </script>
 <script type="text/javascript" src="scripts/general.js"> </script>
 <script type="text/javascript" src="scripts/adi.js"> </script>
 <script type="text/javascript" src="scripts/form_validation.js"> </script>
 
<script>
//var x_win = window.self; 

function goOn() {
var port=document.register.port.value;
var host=document.register.host.value;
var userName=document.register.userName.value;
window.location.href='http://'+host+':'+port+'/FSS/ChekUserAction?userName='+userName;

} 
</script>
<script>
function showCreate(){
window.open("CreateNew.html","","height=150,width=350");
}
function showRename(){
window.open("Rename.html","","height=150,width=350");
}
function showDelete(){
window.open("Delete.html","","height=150,width=350");
}
function showMove(){
window.open("Move.html","","height=150,width=350");
}
</script>

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
									<td background="images/split-bar.gif" bgcolor="#999999"  height="20">
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
                 <td height="120" align="right"></td>
                 <td>
<table  align=center width=100% height=100% ><tr><td valign=top height10%><pre class="Arial-13pxn"><a href="#" onClick='add();'><FONT COLOR=BLACK>Add</FONT></a> <a href="#" onClick='rename();'><font color=black>Rename</font></a>  <a href="#" target="_blank" onClick='refresh();'><font color=black>Refresh</font></a></pre>     
	<tr><td valign=top ><form name=myform method=Get action="DisplaysubFolders.jsp">
<%! 
	
	Connection con;
	String s[];
 %>
<%
	
Connection con=new AbstractDataAccessObject().getConnection();
	int folderId=0;
	if(request.getParameter("id")!=null)
	{	
		folderId=Integer.parseInt(request.getParameter("id"));
		session.removeAttribute("fid");
		session.setAttribute("fid",folderId);
	}
	else
	{
		folderId=(Integer)session.getAttribute("fid");
	}
	String userName=(String)session.getAttribute("user");
	System.out.println("folderid"+folderId);
	String newFolder=request.getParameter("addFolder");
	if (newFolder!=null && !(newFolder.equals("")))
	{
		if(!newFolder.equals("undefined"))
		{
			
			Statement createst=con.createStatement();
			String createSql="Select subfoldername from subfolder where folderid="+folderId;
			ResultSet creaters=createst.executeQuery(createSql); 
			String subfoldersArray[]=new String[30];
			int ii=0;
			boolean createFolder=true;
			while (creaters.next())
			{
				subfoldersArray[ii]=creaters.getString(1);
				if (newFolder.equals(subfoldersArray[ii]))
				{
					createFolder=false;
				}
				ii++;
			}
			if(createFolder)
			{
				Statement insertst=con.createStatement();
				String insertSql="insert into subfolder values("+folderId+",(select userid from userdetails where loginid='"+userName+"'),(select nvl(max(subfolderid),0)+1 from subfolder),'"+newFolder+"',sysdate,'active')";
				int inserti=insertst.executeUpdate(insertSql);
				
			}
		}
	}
	System.out.println("before click");
	String click=request.getParameter("removeSubfolder");
	String oldName=request.getParameter("oldName");
	String renameFolder=request.getParameter("rename");
	if (click!=null)
	{
		if (click.equals("Delete"))
		{
				System.out.println("in delete");	
				String deleteFolders[]=request.getParameterValues("subfolderIds");
				System.out.println("length"+deleteFolders.length);
				PreparedStatement deletePst=null;
				for(int i=1;i<=deleteFolders.length;i++)
				{
					i=i-1;
					System.out.println("delete"+deleteFolders[i]);
					deletePst=con.prepareStatement("delete subfolder where subfolderid='"+deleteFolders[i]+"'");
					i=i+1;
					deletePst.execute();
			}	
			/*Statement removeSt=con.createStatement();
			String removeSql="delete from subfolder where subfolderid=(select subfolderid from subfolder where subfoldername='"+oldName+"'and folderid="+folderId+")";
			int removecount=removeSt.executeUpdate(removeSql); 
			System.out.println("Subfolderis  removed");*/
		}
	}
	
	if (renameFolder!=null && !(renameFolder.equals("")))
	{
		if(!renameFolder.equals("undefined"))
		{
		 	
		 	String rename=request.getParameter("rename");
		 	System.out.println("oldname is"+oldName+"rename is "+rename);
		 	Statement renameSt=con.createStatement();
		 	String renameSql="update subfolder set subfoldername='"+rename+"' where subfolderid=(select subfolderid from subfolder where subfoldername='"+oldName+"'and folderid="+folderId+")";
		 	int renamecount=renameSt.executeUpdate(renameSql);
		 	if (renamecount==1)
		 	System.out.println("Folder is renamed");
		 }
		 else
		 {
		 	System.out.println("Folder is removed");
		 }
	}	
	
	
	s=new String[20];
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	String sql="select subfolderid,subfoldername,SUBFOLDERCREATEDDATE from subfolder where folderid="+folderId+"order by 2";
	ResultSet rs=st.executeQuery(sql);
	ResultSet rs1=st1.executeQuery("select foldername from personalfolder where folderid="+folderId);
	rs1.next();
%>
	
	<pre><A href="Folders.jsp"><IMG SRC="images/Up.gif" BORDER="0"></A>
	<strong>Current Folder:<strong> <font color='green'><%=userName %>-><%=rs1.getString(1) %></font><hr color=#990000 height=5>
	<%
	rs1.close();
	int i=0;
	int subfolderId;
	//rename
	Statement selectst=con.createStatement();
	ResultSet selectrs=selectst.executeQuery(sql);%>
	<div id='renameDiv' style='display:none'>Folder Name<select name=oldName><option value='' selected>select subfolder</option>
	<%
	while (selectrs.next())
	{
		String renamingFolder=selectrs.getString(2);
	%>	<option value=<%= renamingFolder%>><%=renamingFolder %></option>
	<%} %>
	</select>New Name<input type=text name=rename><input type=button value=Rename onClick='xyz1();'></div>
	<input type=submit value=Delete name=removeSubfolder>
	<br><table width='100%'><tr  bgcolor=wheat><th align=left><input Style='visibility:hidden' type=checkbox>&nbsp;&nbsp;&nbsp;Name</th><th align=left>ModifiedDate</th></tr><tr></tr><tr></tr>
<%	while (rs.next())
	{
		subfolderId=rs.getInt(1);
		String subfolderName=rs.getString(2);
		s[i]=subfolderName;
		i++;
		%>
		<tr><td align=left ><input type=checkbox value=<%=subfolderId%> name='subfolderIds'> &nbsp<A HREF="DisplayFiles.jsp?id=<%=subfolderId %>"><IMG SRC="images/folder.gif" BORDER="0"></A>
		<%=subfolderName %>
		</td>
		 <td align=left><%=rs.getDate(3) %></td></tr>
	<%}
	%>
	</table>
<div id='addDiv'style='display:none'> &nbsp;&nbsp;&nbsp;<IMG SRC='images/folder.gif'><input type=text name='addFolder'><input type=button value=Add onclick='xyz();'>
</div>

	<input type=hidden name=folderId value=<%= folderId %> >
<script>
		var jsArr = new Array();
<%
	for (int j=0; j < s.length; j++) {
%>
	jsArr[<%= j %>] = "<%=s[j] %>";
<%}%>
function xyz()
{ 	
		var x=document.myform.addFolder.value
		for (var i=0;i<=jsArr.length;i++)
		{
			
			if (x==jsArr[i])
			{
				alert("already Exist");
				return;
			}
		}
			document.myform.submit();
			
				
}
			
</script>

	
	<div id='renameDiv' style='display:none'>Folder Name<select name=oldName><option value='' selected>select subfolder</option>
<%	while (selectrs.next())
	{
		String renamingFolder=selectrs.getString(2);%>
		<option value="<%=renamingFolder %>"><%=renamingFolder %></option>
	<%}

	rs.close();
	st.close();
	con.close();
%>
<input type=hidden name=folderId value=<%= folderId %> >
</form></td></tr></table>

	</tr></table>


																		<p class="just">
																			<br>

																			<img src="images/paragraph-line.jpg" border="0"
																				height="3" vspace="7" width="1200"">
																			<br>

																			<!-- COPY AND PASTE CODE ABOVE HERE TO MAKE A NEW PARAGRAPH -->







																			<!-- START CAREERS LIST -->
						  </tbody>
					  </table>
														<!-- CONTENT TABLE -->

				  </td>
												</tr>
											</tbody>
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
<script>
var jsArr = new Array();
<%
	for (int j=0; j < s.length; j++) {
%>
	jsArr[<%= j %>] = "<%=s[j] %>";
<%}%>
function xyz1()
{
	
	var y=document.myform.rename.value;
	for (var i=0;i<=jsArr.length;i++)
	{
		if (y==jsArr[i])
		{
			alert("already Exist");
			return;
			
		}
	}
		
	document.myform.submit();
			
		
}

</script>	

