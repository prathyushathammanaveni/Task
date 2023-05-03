<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company Details</title>
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
.style7 {color: #FFFF00}
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
          <h2><%=(String)application.getAttribute("cname")%> Company's Details</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
		  <table width="800" border="0" align="center">
  <tr>
   <td width="24" height="32" bgcolor="#FF0000"><div align="center" class="style7"><b>Id</b> </div></td>
    <td width="64" bgcolor="#FF0000"><div align="center" class="style7"><b>Company Name</b></div></td>
   <td width="56" height="32" bgcolor="#FF0000"><div align="center" class="style7"><b>Category</b></div></td>
   <td width="92" height="32" bgcolor="#FF0000"><div align="center" class="style7"><b>Image</b></div></td>
      <td width="62" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Production</b> </div></td>
	  <td width="78" bgcolor="#FF0000"><div align="center" class="style7"><b>Description</b></div></td>
    <td width="93" bgcolor="#FF0000"><div align="center" class="style7"><b>Crisis found to Manufacture</b></div></td>
	  <td width="47" bgcolor="#FF0000"><div align="center" style="color:#FFFF00"><b>Owner</b></div></td>
	  <td width="53" bgcolor="#FF0000"><div align="center" class="style7"><b>Started Year</b></div></td>
	  <td width="55" bgcolor="#FF0000"><div align="center" class="style7"><b>Chalenges faced Found in the scenario</b></div></td>
	  <td width="39" bgcolor="#FF0000"><div align="center" class="style7"><b>Rank</b></div></td>
	  <td width="61" bgcolor="#FF0000"><div align="center" class="style7"><b>Reviews</b></div></td>	  
  </tr>

            <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>

<%

	String cname= (String)application.getAttribute("cname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,r=0;

      	try 
	{
        
          
      		
      		
      		String query="select * from companydata where cname='"+cname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s9=rs.getString(11);
		s10=rs.getString(12);
		s11=rs.getString(12);
		r=rs.getInt(14);
					
		
		%>



  <tr>
      <td><div align="center" style="color:#000000"><b><%=i%></b></div></td>
    <td><div align="center" style="color:#2c83b0"><b><%=s2%></b></div></td>
	<td><div align="center" style="color:#2c83b0"><b><%=s3%></b></div></td>	
    <td><div align="center">
     <a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="user_Pic.jsp?picture=<%="companyimage"%>&id=<%=i%>" style="width:90px; height:90px;" />
                    </a>
      
      </div>	 </td>
    <td><div align="center" style="color:#CC0066"><b><%=s4%></b></div></td>
	<td><div align="center" style="color:#000000"><%=s5%></div></td>
     <td><div align="center" style="color:#000000"><%=s6%></div></td>
		  	   <td><div align="center" style="color:#000000"><b><%=s7%></b></div></td>
			   <td><div align="center" style="color:#000000"><b><%=s9%></b></div></td>
			   <td><div align="center" style="color:#000000"><b><%=s10%></b></div></td>
			   <td><div align="center" style="color:#000000"><b><%=r%></b></div></td>
		  	   <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9"><strong> <a href="Company_Review.jsp?cname=<%=s2%>&ccat=<%=s3%>&id=<%=i%>" class="style3">Reviews</a> </strong></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
		          <p>&nbsp;</p>
		          <p align="left"><a href="CompanyUser_Main.jsp" class="style16">	Back</a></p>
				  
				  
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