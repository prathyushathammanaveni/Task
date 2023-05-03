<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Reviews Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 24px}
.style3 {color: #330066}
.style4 {color: ##330066}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
		  <li><a href="AdminLogin.jsp">Admin</a></li>
		  <strong></strong>
          <li><a href="CompanyLogin.jsp">Production Company </a></li>
          <li><a href="UserLogin.jsp"><span>End User </span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style2">Crisis Critical Intellectual Property Findings From the COVID-19 Pandemic</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>All User Reviews on <%=(String)application.getAttribute("cname")%> Company </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">

<p>&nbsp;</p>
		  
	
		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="127" height="44" valign="middle" style="color: #330066;">
			<div align="left" class="style5 style14 style7 style6 style3" style="	margin-left:20px;"><b>Company Image</b></div></td>
			<td width="80" height="44" valign="middle" style="color: #330066;">
			<div align="left" class="style7 style14 style5 style6 style4" style="margin-left:20px;"><b>Company Name</b></div></td>
			<td width="80" height="44" valign="middle" style="color: #330066;">
			<div align="left" class="style7 style14 style5 style6 style4" style="margin-left:20px;"><b>Reviewed By</b></div></td>
			<td width="80" height="44" valign="middle" style="color: #330066;">
			<div align="left" class="style7 style14 style5 style6 style4" style="margin-left:20px;"><b>Reviews</b></div></td>
			<td width="80" height="44" valign="middle" style="color: #330066;">
			<div align="left" class="style7 style14 style5 style6 style4" style="margin-left:20px;"><b>Reviewed Date</b></div></td>
			</tr>
			

					<%
							String cname=request.getParameter("cname");
							String ccat=request.getParameter("ccat");
							int id= Integer.parseInt(request.getParameter("id"));
							
							
						int count=0;
						try 
						{   
						
						
							
							
						   	String query="select * from reviews where cname='"+cname+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								String cmpname=rs1.getString(2);
								String r_user=rs1.getString(4);
								String dt=rs1.getString(6);
							    String review=rs1.getString("reviews");
								
								count++;
						
					%>
		<tr>
			<td width="50" bgcolor="#FFFFFF">
			<div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="user_Pic.jsp?picture=<%="companyimage"%>&id=<%=id%>" style="width:50px; height:50px;"  />
		    </a></div>	</td>		
									   		
			<td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style1" style="margin-left:20px;"><strong><em>
		        <%out.println(cmpname);%>
			</em></strong></div></td>
					
			 
			
			<td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style1" style="margin-left:20px;"><strong><em><a href="Company_UProfile.jsp?uname=<%=r_user%>&cname=<%=cname%>&ccat=<%=ccat%>&id=<%=id%>"> <%out.println(r_user);%> 
		    </a></em></strong></div></td>
			
			
			    <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style1" style="margin-left:20px;"><strong><em>
		        <%out.println(review);%>
			</em></strong></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style1" style="margin-left:20px;"><strong><em>
		        <%out.println(dt);%>
			</em></strong></div></td>
</tr>
<%					
					}
					
						if(count==0){
										out.print("No User Has Reviewed On This Company");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
  
		          <p><a href="ViewCompanyDetails.jsp" class="style14">Back</a></p>
				  
				  
				  </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Company</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="CompanyUser_Main.jsp">Home</a></li> 
			<li><a href="CompanyLogin.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></a></div></body>
</html>