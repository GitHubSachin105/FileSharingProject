  <%@ page import="java.sql.*,java.util.*,java.io.*" %>
  <%@page import="com.dts.core.dao.AbstractDataAccessObject"%>
<script type="text/javascript" language='javascript'>
function move()
{ 
	document.getElementById("upload").style.display = 'none'; 
    document.getElementById("move").style.display = 'block';
    document.getElementById("userstable").style.display = 'none'; 
} 
function uploadFun()
{ 
	document.getElementById("move").style.display = 'none'; 
    document.getElementById("upload").style.display = 'block';
 }
function refresh()
{ 
	document.getElementById("userstable").style.display = 'none'; 
	document.getElementById("move").style.display = 'none'; 
    document.getElementById("upload").style.display = 'none';
}
 
 function getOptionValue(obj)
 {
	 var index0, index1;
	 if (obj.name == "permissionType")
	{
		index0 = document.filesform.permissionType.selectedIndex;
		  if (index0==3)
		 	document.getElementById("userstable").style.display = 'block'; 
		 else
		 	document.getElementById("userstable").style.display = 'none'; 
 }
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
			}		%>									</td>
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
 <% if(request.getParameter("status")!=null)
					  {%>
     <strong><%=request.getParameter("status")%></strong>
                      <%}%>
<table  border="0" align="center"  bgcolor="white" width="80%">      
        <tr>
                 <td height="120" align="right"></td>
                 <td>
                
 <br>
<table  align=center width=100% height=100% ><tr><td valign=top ><pre>
<a href="#" onClick='uploadFun();'><font color=black>Upload</font></a> <a href="#" onClick='move();'><font color=black>Move</font></a> <a href="#" onClick='refresh();'><font color=black>Refresh</font></a></pre>
<%! String users[];
	String checkedUsers[];
 %>
<%
	Connection con=new AbstractDataAccessObject().getConnection();
	//con.setAutoCommit(false);
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	String subfolderId=request.getParameter("id");
	String dbUsers[]=(String[])session.getAttribute("dbUsers");
	System.out.println("dislayfile.jsp");
	Hashtable ht=new Hashtable();
	if (dbUsers!=null)
	{
		for(int i=0;i<=1;i++){
			System.out.println("dislayfile.jsp");
			if (request.getParameter(dbUsers[i])!=null)
			{
				if (request.getParameter(dbUsers[i]).equals("on"))
				{
					ht.put(dbUsers[i],dbUsers[i]);
				}
			}
		}
	}
	System.out.println("dislayfile.jsp");
	System.out.println(ht.size());
	Enumeration e=ht.elements();
	while(e.hasMoreElements())
	{
		
		System.out.println("hash"+e.nextElement());
	}
	if (subfolderId!=null)
	{
		session.removeAttribute("subid");
		session.setAttribute("subid",subfolderId);
	}
	if (subfolderId==null)
	subfolderId=(String)session.getAttribute("subid");
	System.out.println("subfolderId is "+subfolderId);
	session.setAttribute("subid",subfolderId);
	String sql="select filename,fileuploaddate,filesize,fileid,filepermission from fileupload where subfolderid="+subfolderId+" order by fileuploaddate desc";
	//ResultSet rs=st.executeQuery(sql);
	ResultSet rs1=st1.executeQuery("select p.foldername foldername,s.subfoldername subfoldername, p.folderid folderid from personalfolder p,subfolder s where p.folderid=s.folderid and subfolderid="+subfolderId);
	rs1.next();
	String folderName=rs1.getString(1);
	String subfolderName=rs1.getString(2);
	int folderId=rs1.getInt(3);
	String userName=(String)session.getAttribute("user");
	//moving file
	if (request.getParameter("movebutton")!=null)
	{
		System.out.println("in move");
		String fileName=request.getParameter("moveFile");
		String toSubfolder=request.getParameter("toSubfolder");
		System.out.println(fileName+toSubfolder);
		String moveSQL="update fileupload set subfolderid=(select subfolderid from subfolder where subfoldername='"+toSubfolder+"'and folderid="+folderId+")where filename='"+fileName+"' and subfolderid="+subfolderId;
		PreparedStatement movePreparedStatement=con.prepareStatement(moveSQL);
		int moveInt=movePreparedStatement.executeUpdate();
		System.out.println("no of rows updated is "+moveInt);
	}
	//end of movefile code
	//begin of filedeletecode
	
	if (request.getParameter("deleteButton")!=null)
	{
		String chkValues[]=request.getParameterValues("chBox");
		System.out.println("arraylengh"+chkValues.length);
		PreparedStatement deletePst=null;
		for(int i=1;i<=chkValues.length;i++)
		{
			i=i-1;
			deletePst=con.prepareStatement("delete fileupload where fileid='"+chkValues[i]+"'");
			i=i+1;
			deletePst.execute();
			
		}
				
		
	}
	//file uploading code
	String upload=request.getParameter("filePath");
	if (upload!=null &&(!upload.equals("")) )
	{
		
		
		String filePath=request.getParameter("filePath");
		System.out.println("in upload2"+filePath);
 		StringTokenizer stk=new StringTokenizer(filePath,".");
 		System.out.println("in upload3");
 		String uploadpath=stk.nextToken();
 		System.out.println("in upload4");
 		String extension=stk.nextToken();
 		StringTokenizer stkFileName=new StringTokenizer(uploadpath,"\\");
 		int tokenCount=	stkFileName.countTokens();
 		System.out.println("tokenCount"+tokenCount);
 		int j=0;
 		String uploadFileName=null;
 		while (stkFileName.hasMoreTokens())
 		{
 			j++;
 			uploadFileName=stkFileName.nextToken();
 			System.out.println("tokens"+j);
 		}		
		boolean addFile=true;
		PreparedStatement refreshPst=con.prepareStatement("select filename from fileupload where subfolderid="+subfolderId);
		ResultSet refreshRs=refreshPst.executeQuery();
		while(refreshRs.next())
		{	
			
			if (uploadFileName.equals(refreshRs.getString(1)))
			{
				addFile=false;
				
			}
		}
		if(addFile)
		{
			
 			System.out.println(filePath+" Uploded File Name is "+uploadFileName+"."+extension);	
			File file=new File(filePath);
			long flength=file.length();
			long size=(flength/1024);
			System.out.println("size is "+size);
			FileInputStream fis=new FileInputStream(file); 
			FileReader reader=new FileReader(file);
			System.out.println("bef preparedst");
			String uploadSqlclob="insert into fileupload values(?,?,(select userid from userdetails where loginid='"+userName+"'),(select nvl(max(fileid),0)+1 from fileupload),?,null,?,1,'"+size+"',sysdate,sysdate,'active',?)";
 			String uploadSqlblob="insert into fileupload values(?,?,(select userid from userdetails where loginid='"+userName+"'),(select nvl(max(fileid),0)+1 from fileupload),?,?,null,1,'"+size+"',sysdate,sysdate,'active',?)";
 			if(!(extension.equalsIgnoreCase("JPEG")||extension.equalsIgnoreCase("JPG")||extension.equalsIgnoreCase("GIF")||extension.equalsIgnoreCase("bmp")||extension.equalsIgnoreCase("wmv")))
            {
       
            String permissionType=request.getParameter("permissionType");
            System.out.println("clog"+file.length());
 			PreparedStatement pst=con.prepareStatement(uploadSqlclob);
 			pst.setInt(1,folderId);
 			pst.setInt(2,Integer.parseInt(subfolderId));
 			pst.setString(3,uploadFileName+"."+extension);
 			pst.setCharacterStream(4, reader, (int) file.length());
 			String status=request.getParameter("status");
 			pst.setString(5,permissionType);
			System.out.println(filePath+status+permissionType);
			int no=pst.executeUpdate();
	      	if(no>0)
		    	{
			    if(permissionType.equalsIgnoreCase("partialpublic"))	
	             { 
	                Statement usersSt=con.createStatement();
	                ResultSet usersResultSet=usersSt.executeQuery("Select loginId from userdetails");
	                String shareUserName;
          	        while (usersResultSet.next())
	                {	
		              shareUserName=usersResultSet.getString(1);
			       
			            if(request.getParameter(shareUserName)!=null)
			           {
			           if(request.getParameter(shareUserName).equals(shareUserName))
			             {
			              String queryPartial="insert into partialpublicfilestatus(fileownerid,fileid,receiveruserid,downloadablestatusbit,filesharedDATEtime,filedownloadedstatusbit) values((select userid from userdetails where loginid='"+userName+"'),(select max(fileid) from fileupload),(select userid from userdetails where loginid='"+shareUserName+"'),0,sysdate,1)"; 
			              Statement partialpublic=con.createStatement();
			              partialpublic.execute(queryPartial);
			
		             	}
			       }
			       }
			    }
			
		   	}
	      
			
			}
			else
			{
			
            System.out.println("blob");
			PreparedStatement pst=con.prepareStatement(uploadSqlblob);
 			pst.setInt(1,folderId);
 			pst.setInt(2,Integer.parseInt(subfolderId));
 			pst.setString(3,uploadFileName+"."+extension);
 			System.out.println(file.length());
 			pst.setBinaryStream(4, fis, (int) file.length());
 			String status=request.getParameter("status");
 			String permissionType=request.getParameter("permissionType");
 			pst.setString(5,permissionType);
			System.out.println(filePath+status+permissionType);
		   int no= pst.executeUpdate();
		   if(no>0)
		   {
	       		    if(permissionType.equalsIgnoreCase("partialpublic"))	
	             { 
	                Statement usersSt=con.createStatement();
	                ResultSet usersResultSet=usersSt.executeQuery("Select loginId from userdetails");
	                String shareUserName;
          	        while (usersResultSet.next())
	                {	
		              shareUserName=usersResultSet.getString(1);
			           if(request.getParameter(shareUserName)!=null)
			           {
			           if(request.getParameter(shareUserName).equals(shareUserName))
			             {
			              String queryPartial="insert into partialpublicfilestatus(fileownerid,fileid,receiveruserid,downloadablestatusbit,filesharedDATEtime,filedownloadedstatusbit) values((select userid from userdetails where loginid='"+userName+"'),(select max(fileid) from fileupload),(select userid from userdetails where loginid='"+shareUserName+"'),0,sysdate,1)"; 
			              Statement partialpublic=con.createStatement();
			              partialpublic.execute(queryPartial);
			
		             	}
			       }
			       }
			    }
		   
		   }
		}
	 }
	}
	%>
	<a href="DisplaysubFolders.jsp?id=<%=folderId %>"><IMG SRC="images/Up.gif" BORDER="0"></a><br>
	<strong>Current Folder: <font color=green><%=userName %>-><%=folderName %>-><%=subfolderName %></font><hr color=#993300>
	<form name='filesform'action='DisplayFiles.jsp?id=<%= subfolderId%>'>
<div id="upload" style='display:none'>File to be Uploaded <input type=file name=filePath> <input type=checkbox name=status> Active &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Permission Type     <SELECT name=permissionType onChange="getOptionValue(this);"><option value="" selected>Select</option>
											   <option value="private">Private</option>
                                               <option value="public">Public</option>
                                               <option value="partialpublic" >PartialPublic</option>
       </select> <input type=button value='Upload' name=upload  onClick='checkFileName();'><br>
       </div><br> 
  <%
  	PreparedStatement movePst=con.prepareStatement("Select filename from fileupload where subfolderid='"+subfolderId+"'");
  	ResultSet moveResultSet=movePst.executeQuery();
  	%>
  	<div id='move' style='display:none'>Move<select name=moveFile><option value='select' selected='true'>Select</option>
  	<%while (moveResultSet.next())
  	{%>
  		<option><%=moveResultSet.getString(1) %></option>
  	<%} %>
  	</select>To<select name=toSubfolder><option value='select selected='true'>Select</option>
  	<%
  	PreparedStatement moveToPst=con.prepareStatement("select subfolderid,subfoldername from subfolder where folderid="+folderId);
  	ResultSet moveToResultSet=moveToPst.executeQuery();
  	while (moveToResultSet.next())
  	{
  	  String  ownfolder=moveToResultSet.getString(1);
  	  String movefolder=moveToResultSet.getString(2);
  	if(!subfolderId.equals(ownfolder)){
  	%>
  	
  		<option><%=movefolder %></option>
  	<%}} %>
  	</select><input type=submit value='Move' name=movebutton></div>
   	<%
   	Statement usersSt=con.createStatement();
	ResultSet usersResultSet=usersSt.executeQuery("Select loginId from userdetails");
	%>
	<div id=userstable style='display:none'><table border=1 bgcolor=pink align='right'width='20%'><tr><th align=left>
	<font color=#993300>File Shared by</font></th></tr>
	<%users=new String[50];
	int i=0;
	String shareUserName;
	while (usersResultSet.next())
	{	
		shareUserName=usersResultSet.getString(1);
		%>
		<tr><td><input type=checkbox name="<%=shareUserName %>" value="<%=shareUserName %>"><%=shareUserName %></td></tr>
		<%users[i]=shareUserName;
		System.out.println("while"+users[i]);
		i++;
	}
	session.setAttribute("dbUsers",users);
	%></table></div>
	<%
	ResultSet rs=st.executeQuery(sql);
	//begin of capacity calculation
	Statement capacitySt=con.createStatement();
	String capacitySql="select sum(filesize) from fileupload where folderid="+folderId+" and userid=(select userid from userdetails where loginid='"+userName+"')";
	ResultSet capacityRs=capacitySt.executeQuery(capacitySql);
	String usedCapacity=null;
	while(capacityRs.next())
	{
	 usedCapacity=capacityRs.getString(1);
	 	if (usedCapacity==null)
	 	{
	 		usedCapacity="Zero";
	 	}
	 }%>
	<strong><font color=#008080> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Currently you are usning <font color=red><%=usedCapacity %></font> KB out of  your given space of 1 GB</font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value=Delete name='deleteButton'>
	<table width='600' border=0 height="125">
	  <tr bgcolor='wheat' ><th width="12%" align=left><input type=checkbox style='visibility:hidden'>  &nbsp;&nbsp;&nbsp;Name</th><th width="08%" align=center>DateModified</th>
	  <th width="08%" align=center> size</th>
	  <th width="08%" align=center>Permission</th>
	  </tr>
	<%String fileNames[]=new String[100];
	int filei=0;
	while(rs.next())
	{
		String fileName=rs.getString(1);
		
		fileNames[filei]=fileName;
		filei++;
		%>
		
<tr><td ><input type=checkbox  name='chBox' value=<%=rs.getInt(4) %> >&nbsp;&nbsp;&nbsp;<font color=#993300><A HREF='./OwnFileAction?fileID=<%=rs.getInt(4) %>&subFolderID=<%=subfolderId %>'><IMG SRC="images/File.gif" BORDER="0"></A><font size=4> <%=fileName %></font></td><td align="center" ><span class=Title><%=rs.getDate(2) %></span></td><td align="center"><span class=Title><%=rs.getString(3) %> KB</span></td><td align="center"><span class=Title> <%=rs.getString(5) %></span></td></tr>
				
	<%} %>
	</table>
	<%rs.close();st.close();
%>

<input type=hidden value=<%=subfolderId %>>



</table>
</td></tr></table>
<script>
var jsArr = new Array();
<%
	for (int j=0; j < fileNames.length; j++) {
%>
	jsArr[<%= j %>] = "<%=fileNames[j] %>";
<%}%>

function checkFileName()
{ 	
	
	var path=document.filesform.filePath.value;
	var myArr=new Array();
	myarr=path.split(".");
	var path2=myarr[0];
	var myArr2=new Array();
	myArr2=path2.split("\\");
	var FileName;
	for(var i=0;i<myArr2.length;i++)
	{
			
			FileName=myArr2[i];
	}
	for(var x=0;x<=jsArr.length;x++)
	{
		
		
		if(FileName==jsArr[x])
		{
			
			alert("already exists");
			return;
		}
	}
	
	document.filesform.submit();
		
}

</script>




																		<p class="just">
																			<br>

																			<img src="images/paragraph-line.jpg" border="0"
																				height="3" vspace="7" width="1200"">
																			<br>

																			<!-- COPY AND PASTE CODE ABOVE HERE TO MAKE A NEW PARAGRAPH -->







																			<!-- START CAREERS LIST -->
					
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
  